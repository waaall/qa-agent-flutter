import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';
import 'package:url_launcher/url_launcher.dart';

/// Markdown 渲染器
class MarkdownRenderer extends StatelessWidget {
  final String content;

  const MarkdownRenderer({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    return MarkdownBody(
      data: content,
      selectable: true,
      onTapLink: (text, href, title) {
        if (href != null) {
          _launchUrl(href);
        }
      },
      styleSheet: MarkdownStyleSheet(
        p: theme.textTheme.bodyMedium,
        h1: theme.textTheme.headlineMedium,
        h2: theme.textTheme.headlineSmall,
        h3: theme.textTheme.titleLarge,
        // 行内代码:用主题 surfaceContainer,不再硬编码 hex
        code: TextStyle(
          backgroundColor: cs.surfaceContainer,
          color: cs.onSurface,
          fontFamily: 'monospace',
          fontSize: 13,
        ),
        // 代码块:用 surfaceContainerLow,与行内代码区分,内部高亮主题在 _CodeBlockBuilder
        codeblockDecoration: BoxDecoration(
          color: cs.surfaceContainerLow,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: cs.outlineVariant),
        ),
        blockquote: theme.textTheme.bodyMedium?.copyWith(
          color: cs.onSurfaceVariant,
          fontStyle: FontStyle.italic,
        ),
        blockquoteDecoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: cs.outline, width: 3),
          ),
        ),
        tableBorder: TableBorder.all(color: cs.outlineVariant),
        tableHead: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
        ),
        tableBody: theme.textTheme.bodyMedium,
        listBullet: theme.textTheme.bodyMedium,
        a: TextStyle(
          color: cs.primary,
          decoration: TextDecoration.underline,
          decorationColor: cs.primary.withValues(alpha: 0.4),
        ),
      ),
      builders: {
        'code': _CodeBlockBuilder(isDark: isDark),
      },
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.tryParse(url);
    if (uri == null) return;

    // 安全检查：只允许 http/https 链接
    if (uri.scheme != 'http' && uri.scheme != 'https') {
      return;
    }

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}

/// 代码块构建器
class _CodeBlockBuilder extends MarkdownElementBuilder {
  final bool isDark;

  _CodeBlockBuilder({required this.isDark});

  @override
  Widget? visitElementAfter(element, preferredStyle) {
    if (element.textContent.isEmpty) return null;

    final code = element.textContent.trimRight();
    final language = element.attributes['class']?.replaceFirst('language-', '');

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: HighlightView(
        code,
        language: language ?? 'plaintext',
        theme: isDark ? atomOneDarkTheme : githubTheme,
        padding: const EdgeInsets.all(12),
        textStyle: const TextStyle(
          fontFamily: 'monospace',
          fontSize: 13,
        ),
      ),
    );
  }
}

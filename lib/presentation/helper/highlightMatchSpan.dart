import 'package:flutter/material.dart';

List<InlineSpan> highlightSpan({
  required String text,
  required String? query,
  required TextStyle baseStyle,
  TextStyle? highlightStyle,
  Color highlightColor = const Color(0x29D97706),
}) {
  if (query == null || query.trim().isEmpty) {
    return [TextSpan(text: text, style: baseStyle)];
  }

  final lowerText = text.toLowerCase();
  final queries = query.toLowerCase().split(RegExp(r'\s+')).where((q) => q.isNotEmpty).toList();

  final matches = <MapEntry<int, int>>[];

  for (final q in queries) {
    int start = 0;
    while (start < lowerText.length) {
      final index = lowerText.indexOf(q, start);
      if (index == -1) break;

      // Skip if this index overlaps with a previous match
      if (matches.any((m) => index < m.key + m.value && m.key < index + q.length)) {
        start = index + 1;
        continue;
      }

      matches.add(MapEntry(index, q.length));
      start = index + q.length;
    }
  }

  // Sort by match start position
  matches.sort((a, b) => a.key.compareTo(b.key));

  int cursor = 0;
  final spans = <InlineSpan>[];

  for (final match in matches) {
    final start = match.key;
    final length = match.value;

    if (start > cursor) {
      spans.add(TextSpan(text: text.substring(cursor, start), style: baseStyle));
    }

    spans.add(WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: highlightColor,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          text.substring(start, start + length),
          style: highlightStyle ?? baseStyle.copyWith(color: Colors.black),
        ),
      ),
    ));

    cursor = start + length;
  }

  if (cursor < text.length) {
    spans.add(TextSpan(text: text.substring(cursor), style: baseStyle));
  }

  return spans;
}

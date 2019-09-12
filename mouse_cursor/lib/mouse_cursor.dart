library mouse_cursor;

import 'package:flutter/gestures.dart';
import 'package:mouse_cursor/style.dart';

import 'empty_html.dart' if (dart.library.html) 'dart:html' as html;
import 'package:flutter/material.dart';

/// A Calculator.
class MouseCursor extends MouseRegion {
  MouseCursor({
    Widget child,
    CursorStyle style,
    PointerEnterEventListener onEnter,
    PointerHoverEventListener onHover,
    PointerExitEventListener onExit,
  }) : super(
          child: child,
          onEnter: (enterEvent) async {
            if (html.document != null) {
              html.document.body.style.cursor = _getCursorStyleName(style);
            }
            if (onEnter != null) {
              onEnter(enterEvent);
            }
          },
          onHover: (hoverEvent) async {
            if (html.document != null) {
              html.document.body.style.cursor = _getCursorStyleName(style);
            }
            if (onHover != null) {
              onHover(hoverEvent);
            }
          },
          onExit: (exitEvent) async {
            if (html.document != null) {
              html.document.body.style.cursor = 'default';
            }
            if (onExit != null) {
              onExit(exitEvent);
            }
          },
        );
}

String _getCursorStyleName(CursorStyle style) =>
    cursors.firstWhere((map) => map.style == style).name;

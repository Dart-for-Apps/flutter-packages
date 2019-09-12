library mouse_cursor;

import 'package:flutter/gestures.dart';
import 'style.dart';

import 'empty_changer.dart' if (dart.library.html) 'mouse_changer.dart';
import 'package:flutter/material.dart';

export 'style.dart';
export 'empty_changer.dart' if (dart.library.html) 'mouse_changer.dart';

/// A MouseCursor helper widget.
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
            setMouseCursor(_getCursorStyleName(style));

            if (onEnter != null) {
              onEnter(enterEvent);
            }
          },
          onHover: (hoverEvent) async {
            setMouseCursor(_getCursorStyleName(style));
            if (onHover != null) {
              onHover(hoverEvent);
            }
          },
          onExit: (exitEvent) async {
            setMouseCursor('default');
            if (onExit != null) {
              onExit(exitEvent);
            }
          },
        );
}

String _getCursorStyleName(CursorStyle style) =>
    cursors.firstWhere((map) => map.style == style).name;

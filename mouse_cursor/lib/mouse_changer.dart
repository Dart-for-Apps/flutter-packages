import 'dart:html' as html;

/// Set mouse cursor to name.
/// The name is defined by [css cursor style guide](https://developer.mozilla.org/ko/docs/Web/CSS/cursor).
setMouseCursor(String name) {
  html.document.body.style.cursor = name;
}

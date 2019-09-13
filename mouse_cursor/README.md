# MouseCursor

This widget change mouse cursor when the mouse pointer is in the range of
the widget. This will give more web-like experience when the app is
`flutter web` app. On android/ios app, this does not effect anything.

All the styles supported by this package are from [css cursor style guide](https://developer.mozilla.org/ko/docs/Web/CSS/cursor).

## HOW TO INSTALL

To install latest version of this package add following to your `pubspec.yaml`'s `dependencies` section.

```yaml
dependencies:
  mouse_cursor:
    git:
      url: https://github.com/dart-for-apps/flutter-packages
      path: mouse_cursor

```

## Usage

See [lib/style.dart](lib/style.dart) for all styles supported.

```dart
import 'package:mouse_cursor/mouse_cursor.dart';

MouseCursor(
    child: Text("Hello World"),
    style: CursorStyle.text,
);
```

The `default` cursor is aliased to `CursorStyle.normal` because `default` is a dart keyword.

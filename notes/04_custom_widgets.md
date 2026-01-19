# Custom Widgets

## Why Custom Widgets?

Instead of writing 50 lines in `main()`, you create **reusable building blocks**.

**Before:** Everything in one place
```dart
body: Container(
  decoration: BoxDecoration(...),
  child: Center(
    child: Text(...),
  ),
)
```

**After:** Clean and reusable
```dart
body: GradientContainer()  // One line!
```

---

## How to Create a Custom Widget

```dart
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(context) {
    return // your widget here
  }
}
```

### Explained:

| Part | Meaning |
|------|---------|
| `class MyWidget` | "I'm creating a blueprint called MyWidget" |
| `extends StatelessWidget` | "It's a widget that doesn't change" |
| `const MyWidget({super.key})` | Constructor with key for performance |
| `@override` | "I'm replacing the default build function" |
| `Widget build(context)` | "This is how my widget looks" |
| `return ...` | The actual widget to display |

---

## Full Example

```dart
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(...),
      ),
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}
```

---

## Important Rules

### 1. One Widget = One File

```
lib/
  ├── main.dart
  ├── gradient_container.dart   // GradientContainer widget
  ├── styled_text.dart          // StyledText widget
  └── subtitle_text.dart        // SubtitleText widget
```

### 2. File Naming

- Widget name: `GradientContainer` (PascalCase)
- File name: `gradient_container.dart` (snake_case)

### 3. Import Your Widgets

```dart
import 'package:your_app/gradient_container.dart';
```

### 4. Always Use `const` and `super.key`

```dart
const MyWidget({super.key});  // ✅ Good
MyWidget();                    // ❌ Missing const and key
```

---

## Using Custom Widgets

In `main.dart`:
```dart
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(),  // ← Your widget!
      ),
    ),
  );
}
```

---

## Multiple Widgets

`child:` only accepts ONE widget.

For multiple widgets, use `Column` (vertical) or `Row` (horizontal):

```dart
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,  // Center vertically
  children: [
    StyledText(),
    SubtitleText(),
  ],
)
```

| Widget | Direction |
|--------|-----------|
| `Column` | Vertical (top to bottom) |
| `Row` | Horizontal (left to right) |

---

## Common Issues

### Widget doesn't take full width?
```dart
Container(
  width: double.infinity,  // ← Add this
  ...
)
```

### Multiple widgets not centered?
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,  // ← Add this
  children: [...],
)
```

---

## Summary

1. Create class that `extends StatelessWidget`
2. Add `const MyWidget({super.key})`
3. Override `build(context)` method
4. Return your widget
5. Put in separate file
6. Import and use!

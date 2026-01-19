# VS Code Colors (Syntax Highlighting)

## Color Meanings

| Color | What it is | Examples |
|-------|-----------|----------|
| 🟢 **Green** | Classes / Widgets | `MaterialApp`, `Container`, `Text`, `Center` |
| 🔵 **Blue** | Properties / Parameters | `home:`, `body:`, `child:`, `style:` |
| 🟡 **Yellow** | Functions / Methods | `runApp()`, `fromARGB()`, `build()` |
| 🟠 **Orange** | Strings (text) | `'Hello World'` |
| 🟣 **Purple** | Numbers | `255`, `28`, `16` |
| ⚪ **Gray** | Comments | `// This is a comment` |
| 🔵 **Light Blue** | Keywords | `const`, `void`, `return`, `class` |

## Example

```dart
// Gray - Comment
class GradientContainer extends StatelessWidget {
//↑Green  ↑Green               ↑Green

  const GradientContainer({super.key});
  //↑Light Blue              ↑Blue

  @override
  Widget build(context) {
  //↑Green ↑Yellow

    return Container(
    //↑Light Blue ↑Green

      child: Text('Hello'),
      //↑Blue  ↑Green ↑Orange
    );
  }
}
```

## Why This Helps

When you see:
```dart
child: Center(
```

- `child:` is **blue** → Property (setting)
- `Center` is **green** → Widget (a box)

You can quickly understand: "Ah, the green thing is a widget, the blue thing tells me which setting."

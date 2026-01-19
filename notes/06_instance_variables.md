# Instance Variables

## What are Instance Variables?

Variables that belong to a class/widget and can be set from outside.

**Without instance variables:** Widget always shows the same thing (hardcoded)
**With instance variables:** Widget is configurable and reusable

---

## Example: Hardcoded vs Configurable

### Hardcoded (bad)
```dart
class StyledText extends StatelessWidget {
  @override
  Widget build(context) {
    return Text('Hello World');  // Always "Hello World"
  }
}

// Usage
StyledText()  // Can only show "Hello World"
```

### Configurable (good)
```dart
class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  
  final String text;  // ← Instance variable
  
  @override
  Widget build(context) {
    return Text(text);  // Shows whatever you pass
  }
}

// Usage
StyledText('Hello')      // Shows "Hello"
StyledText('Goodbye')    // Shows "Goodbye"
StyledText('Anything!')  // Shows "Anything!"
```

---

## The `this.` Keyword

```dart
const StyledText(this.text, {super.key});
//              ↑
//              "Store this parameter in my variable"
```

**Without `this.`:** Parameter comes in and disappears
**With `this.`:** Parameter is stored in the class variable

---

## How it works

```
1. You call:           StyledText('Hello')
                              │
                              ▼
2. this.text:          Receives 'Hello'
                              │
                              ▼
3. final String text:  Stores 'Hello'
                              │
                              ▼
4. Text(text):         Displays 'Hello'
```

---

## Multiple Instance Variables

```dart
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});
  
  final Color firstColor;   // ← Instance variable 1
  final Color secondColor;  // ← Instance variable 2
  
  // Now you can use firstColor and secondColor anywhere in this class
}

// Usage
GradientContainer(Colors.blue, Colors.green)
GradientContainer(Colors.red, Colors.orange)
```

---

## Why `final`?

Instance variables should be `final` because:
- They are set once in the constructor
- They shouldn't change after that
- Makes your widget predictable

```dart
final String text;   // ✅ Good
var String text;     // ❌ Bad practice for instance variables
```

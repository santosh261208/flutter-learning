# Variables in Dart

## Variable Types

| Keyword | Changeable? | When is value set? |
|---------|-------------|-------------------|
| `var` | ✅ Yes | Runtime |
| `final` | ❌ No | Runtime |
| `const` | ❌ No | Compile time |

---

## var

Can be changed anytime.

```dart
var name = 'Santosh';
name = 'John';  // ✅ Works
```

---

## final

Set once when app runs, cannot change after.

```dart
final time = DateTime.now();  // ✅ Set when app starts
time = DateTime.now();        // ❌ Error! Cannot change
```

---

## const

Value must be known BEFORE app runs. Never changes.

```dart
const pi = 3.14;              // ✅ Always 3.14
const time = DateTime.now();  // ❌ Error! Time isn't known before runtime
```

---

## When to use what?

| Situation | Use |
|-----------|-----|
| Value will change | `var` |
| Value set once, known at runtime | `final` |
| Value always the same, known before runtime | `const` |

---

## Examples in Flutter

```dart
var counter = 0;              // Will change when button pressed
final Color myColor = Colors.blue;  // Set once, won't change
const double fontSize = 28;   // Always 28
```

# Images & Buttons in Flutter

## Adding Images

### 1. Create folder structure
```
your_app/
  ├── assets/
  │     └── images/
  │           ├── dice-1.png
  │           ├── dice-2.png
  │           └── ...
  └── lib/
```

### 2. Register in pubspec.yaml
```yaml
flutter:
  assets:
    - assets/images/
```

### 3. Use in code
```dart
Image.asset(
  'assets/images/dice-1.png',
  width: 200,  // Optional: set size
)
```

---

## Buttons

### TextButton (simple text button)
```dart
TextButton(
  onPressed: myFunction,      // What happens on click
  child: Text('Click me'),    // What button shows
)
```

### TextButton with styling
```dart
TextButton(
  onPressed: myFunction,
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,  // Text color
    textStyle: TextStyle(
      fontSize: 28,
    ),
  ),
  child: Text('Roll Dice'),
)
```

---

## Connecting Button to Function

```dart
// 1. Create the function
void rollDice() {
  print('Button pressed!');
}

// 2. Connect to button (NO parentheses!)
TextButton(
  onPressed: rollDice,  // ✅ Correct - pass the function
  // onPressed: rollDice(),  // ❌ Wrong - this CALLS it immediately
  child: Text('Roll'),
)
```

**Important:** `onPressed: rollDice` NOT `onPressed: rollDice()`

---

## SizedBox for Spacing

```dart
Column(
  children: [
    Image.asset('...'),
    SizedBox(height: 20),  // ← 20 pixels space
    TextButton(...),
  ],
)
```

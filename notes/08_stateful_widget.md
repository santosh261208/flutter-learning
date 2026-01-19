# StatefulWidget

## StatelessWidget vs StatefulWidget

| StatelessWidget | StatefulWidget |
|-----------------|----------------|
| Never changes | Can change |
| Like a poster | Like a TV screen |
| Simple | More complex |
| No `setState` | Uses `setState` |

---

## When to use which?

**StatelessWidget:** Static content that never changes
- Background gradient
- Static text
- Icons

**StatefulWidget:** Content that changes
- Counter that goes up
- Dice image that changes
- Form inputs
- Anything interactive

---

## StatefulWidget Structure

A StatefulWidget has TWO classes:

```dart
// PART 1: The Widget itself
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// PART 2: The State (where the magic happens)
class _DiceRollerState extends State<DiceRoller> {
  // Variables that can change go here
  var activeDiceImage = 'assets/images/dice-1.png';

  // Functions go here
  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-2.png';
    });
  }

  // Build method goes here
  @override
  Widget build(context) {
    return // your widgets
  }
}
```

---

## Why Two Classes?

```
StatefulWidget (DiceRoller)
       │
       └── "I can change, here's my state"
                    │
                    ▼
           State (_DiceRollerState)
                    │
                    └── Variables, functions, build method
```

Flutter needs this separation to efficiently rebuild only what changed.

---

## The Most Important Thing: setState()

```dart
void rollDice() {
  setState(() {
    activeDiceImage = 'assets/images/dice-2.png';
  });
}
```

### Without setState()
```dart
void rollDice() {
  activeDiceImage = 'assets/images/dice-2.png';  // Variable changes
  // BUT screen stays the same! Flutter doesn't know to rebuild.
}
```

### With setState()
```dart
void rollDice() {
  setState(() {
    activeDiceImage = 'assets/images/dice-2.png';  // Variable changes
  });
  // Flutter rebuilds the widget → screen updates!
}
```

**`setState()` tells Flutter: "Hey, something changed! Please redraw the screen."**

---

## Simple Mental Model

```
Button pressed
      │
      ▼
rollDice() runs
      │
      ▼
setState(() { change variable })
      │
      ▼
Flutter sees setState
      │
      ▼
Flutter calls build() again
      │
      ▼
Screen updates with new image!
```

---

## Common Mistakes

### ❌ Forgetting setState
```dart
void rollDice() {
  activeDiceImage = 'assets/images/dice-2.png';  // Won't update screen!
}
```

### ✅ Using setState
```dart
void rollDice() {
  setState(() {
    activeDiceImage = 'assets/images/dice-2.png';  // Screen updates!
  });
}
```

### ❌ Changing state variable outside setState
```dart
void rollDice() {
  activeDiceImage = 'assets/images/dice-2.png';  // Change here...
  setState(() {
    // Empty setState
  });
}
// This works but is bad practice!
```

### ✅ Changing inside setState
```dart
void rollDice() {
  setState(() {
    activeDiceImage = 'assets/images/dice-2.png';  // Change inside!
  });
}
```

---

## Template for StatefulWidget

```dart
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() {
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  // Your variables here
  var myVariable = 'initial value';

  // Your functions here
  void myFunction() {
    setState(() {
      myVariable = 'new value';
    });
  }

  @override
  Widget build(context) {
    return // Your widgets here
  }
}
```

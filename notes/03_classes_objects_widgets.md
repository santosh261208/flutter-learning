# Classes, Objects, Widgets, Arguments & Properties

## Class = Blueprint

A class is a **blueprint** (Bauplan) for creating things.

```dart
class Container {
  // This describes WHAT a Container is
}
```

Like in Java - same concept.

---

## Object = The Built Thing

When you **use** the class, you create an object.

```dart
Container()  // ← This creates an object from the blueprint
```

**Class** = Blueprint for a car
**Object** = The actual car you drive

---

## Widget = Class for UI

Widgets are **classes** specifically for UI elements.

```dart
Text()       // Widget for text
Container()  // Widget for a box
Center()     // Widget for centering
```

**All widgets are classes. But not all classes are widgets.**

```
Class (blueprint for anything)
   └── Widget (blueprint for UI)
         ├── Container
         ├── Text
         └── Center
```

---

## Arguments = What You Put In ()

Everything inside the parentheses `()` are arguments.

```dart
Text('Hello', style: TextStyle(...))
     ↑______________________________↑
              All arguments
```

---

## Properties = Named Settings

Properties are **named** arguments with `name: value`.

```dart
Container(
  width: 100,           // ← Property
  height: 200,          // ← Property
  color: Colors.blue,   // ← Property
)
```

Like ordering pizza:
```dart
Pizza(
  size: "large",        // ← Property
  topping: "salami",    // ← Property
)
```

---

## Arguments vs Properties

| Term | Meaning | Example |
|------|---------|---------|
| **Argument** | Everything in `()` | `Text('Hello', style: ...)` |
| **Property** | Named setting `name: value` | `style: TextStyle(...)` |

Properties ARE arguments - just named ones.

---

## Summary

| Concept | Simple Explanation |
|---------|-------------------|
| Class | Blueprint |
| Object | The built thing |
| Widget | Class for UI |
| Argument | What goes in `()` |
| Property | Named setting `name: value` |

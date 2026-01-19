# Flutter & Dart Basics

## What is Flutter?

Flutter is a **UI toolkit** by Google to build apps for:
- Mobile (iOS, Android)
- Web
- Desktop

All from **one codebase**.

## What is Dart?

Dart is the **programming language** that Flutter uses.

```
Dart = the language (like Java)
Flutter = the toolkit (like Android SDK)
```

## App Structure

Every Flutter app starts with `main()`:

```dart
void main() {
  runApp(MyApp());  // Starts the app
}
```

## Widget Tree

Flutter apps are **widgets inside widgets**:

```
MaterialApp
  └── Scaffold
        └── Container
              └── Center
                    └── Text
```

Like Russian dolls - boxes inside boxes.

## Basic App Template

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    ),
  );
}
```

| Widget | Purpose |
|--------|---------|
| `MaterialApp` | App shell (themes, navigation) |
| `Scaffold` | Page structure |
| `body:` | The page content |
| `Center` | Centers its child |
| `Text` | Shows text |

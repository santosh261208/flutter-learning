# Learning Journal

## 12.01.2026

### What I did
- Installed Flutter SDK
- Set up VS Code with Flutter extensions
- Created GitHub repository with proper structure
- Learned Flutter basics (widget tree, gradients)

### What I learned
- Flutter apps are widgets inside widgets
- `child:` = "what goes inside this box"
- VS Code colors: green = widgets, blue = properties
- Git workflow: add, commit, push

### Next steps
- Continue with Lesson 36 (Custom Widgets)

---

## 17.01.2026

### What I did
- Reviewed code structure differences (class vs direct)
- Learned core concepts: classes, objects, widgets, arguments, properties

### What I learned
- Class = blueprint (like Java)
- Object = the built thing (when you write Container())
- Widget = class for UI elements
- Argument = what you put in ()
- Property = named setting (name: value)
- VS Code colors: green = classes, blue = properties, yellow = functions

### Next steps
- Continue with Lesson 36 (Custom Widgets)

---

## 18.01.2026

### What I did
- Created custom widgets using classes
- Built GradientContainer, StyledText, and SubtitleText widgets
- Organized code into separate files
- Experimented with adding subtitle (not from course!)

### What I learned
- `class MyWidget extends StatelessWidget` = custom widget
- `const MyWidget({super.key})` = constructor with key for performance
- `@override` and `build(context)` = how widget looks
- `child:` only accepts ONE widget
- `Column(children: [...])` for multiple widgets vertically
- `mainAxisAlignment: MainAxisAlignment.center` = center vertically
- `width: double.infinity` = take full width
- One widget = one file (clean code)

### Challenges
- Had to look at previous code often
- Needed help with double.infinity

### Next steps
- Continue with Roll Dice App
- Create notes folder for learning notes

---

## 19.01.2026

### What I did
- Learned variables (var, final, const)
- Learned instance variables to make widgets configurable
- Solved color configuration task on my own!
- Added images (dice) to the app
- Created buttons with TextButton
- Learned StatefulWidget and setState()
- Created DiceRoller widget

### What I learned
- `var` = changeable variable
- `final` = set once at runtime, cannot change
- `const` = set at compile time, cannot change
- `this.variableName` = store parameter in class variable
- Instance variables make widgets reusable
- `Image.asset('path')` = display images
- `TextButton(onPressed: function, child: Text(...))` = button
- StatelessWidget = never changes
- StatefulWidget = can change (has state)
- `setState(() { })` = tell Flutter to rebuild UI

### Challenges
- StatefulWidget structure is complex
- Lots of new concepts at once

### Next steps
- Tomorrow: Review and understand everything
- Then: Add random number generation
- Finish Roll Dice App!

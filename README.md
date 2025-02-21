# Dart

- C like language.

## Type system

- Statically typed and compiled.
  - https://dart.dev/language/type-system
- `dynamic` is the equivalent of `any` in TypeScript. To be avoided.
- No union type like type script. It is not possible to to `String | int`. This is a design choice by the team.
- Null-safe: `String?` vs `String`. A `String` cannot be `null` while a `String?` can.
- Records: typed tuples.
  - https://dart.dev/language/records

## Compiled language

- The compiler can optimize the code if written in a proper way.
- `var` vs `final` vs `const`
  - https://dart.dev/language/variables#final-and-const 
- `const` allows the compiler to do the work at compile time and not at run-time which will make it faster. To be used as much as possible.
- `late` variables.
- No private keyword. Prepend the class, variable with `_` to make it private.

## No meta programming

It was being experimentally implemented but suspended early 2025 by the team. https://medium.com/dartlang/an-update-on-dart-macros-data-serialization-06d3037d4f12.


Instead there is [`build_runner`](https://pub.dev/packages/build_runner) (Example of package for data classes: [`freezed`](https://pub.dev/packages/freezed), [`built_value`](https://pub.dev/packages/built_value)).

## Naming convention

https://dart.dev/effective-dart/style

- Variable, functions : `camelCase`
`const myVariable = 2;`
- Types, classes: `PascalCase`
Ex: `class MyClass {}`
- Library/package/file name: `snake_case`. Ex: `my_file_name.dart`
- Enum: `PascalCase` and singular. Entries are in `camelCase`.

Ex:

```dart
enum Animal {
  cat,
  dog,
  parrot,
}
```

## Extensions

https://dart.dev/language/extension-methods

Extension methods add functionality to existing libraries.

It helps writing code in a more oriented object way, and it improves discoverability.

## Extension types

Compile-time abstraction that "wraps" an existing type with a different, static-only interface.

https://dart.dev/language/extension-types



# Flutter

- Recommended architecture is to share data by value and not by reference.
- Use immutable and `const` objects with a `copyWith`, `rebuild` method. (Example of package: [`freezed`](https://pub.dev/packages/freezed), [`built_value`](https://pub.dev/packages/built_value)).

## Widgets

- https://docs.flutter.dev/ui/widgets
- https://docs.flutter.dev/get-started/fundamentals/widgets

Widget are used to describe the desired UI in a declarative way.

### Built in widgets

- `Padding`: Adds a padding around its child.
- `ColoredBox`: Applies a background color.
- `SizedBox`: Constraints the widget to a width and/or height.
- `Center`: Centers its child.
- `Row`: Aligns its children horizontally.
- `Column:` Aligns its children vertically.
- `ListView` Aligns its children vertically/horizontally and makes it scrollable.
- `Text`: Displays a text.
- `Icon`: Displays an icon.
- `IconButton`, `TextButton`, `ElevatedButton` etc: Button that can be interacted with, with different styling.

### Create your own widget.

- `StatelessWidgets`: A widget that doesn't hold states. It only composes other widgets
- [`StatefulWidgets`](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html): A widget that can old a state. It also provide methods. It allows to controller the life cycle of the states:
  - `initState`
  - `dispose`
  - `setState`
  - `didUpdateWidget`
  - `didChangeDependencies`
- [`InheritedWidgets`](https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html). Widgets that propagate information down the tree.


#### Good practices

- [Widgets are **immutable**. Only states are mutable.](https://docs.flutter.dev/resources/inside-flutter#:~:text=The%20element%20tree%20is%20necessary%20because%20the%20widgets%20themselves%20are%20immutable)
- Create your own sub-widgets instead of creating functions. https://stackoverflow.com/a/53234826/12066144
- Compose widget instead of extending them.
  - https://docs.flutter.dev/resources/architectural-overview#composition
  - https://docs.flutter.dev/resources/faq#can-i-extend-and-customize-the-bundled-widgets


## Theme

Theme can be defined using `ThemeData` which then can be used with `Theme.of(context)`.

## Constraints go down. Sizes go up. Parent sets position.

- https://docs.flutter.dev/ui/layout/constraints
- [Brown bag](https://pruo365-my.sharepoint.com/personal/peter_mekhaeil_prudential_com_sg/_layouts/15/stream.aspx?id=%2Fpersonal%2Fpeter%5Fmekhaeil%5Fprudential%5Fcom%5Fsg%2FDocuments%2FRecordings%2FFE%20Symphony%202%2E0%20Weekly%20Technical%2D20250204%5F153600%2DMeeting%20Recording%2Emp4&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&referrer=StreamWebApp%2EWeb&referrerScenario=AddressBarCopied%2Eview%2E8671ba07%2Dafe4%2D44c2%2Da30f%2D60b0a854cb25)

## The 3 trees

https://docs.flutter.dev/resources/inside-flutter

- Widget tree.
- Element tree.
- Render object tree


## Good practices and convention:

- When a widget takes a sub-widget as a parameter, name it `child`.
- When a widget takes a list of sub-widgets as a parameter, name it `children`.
- When a widget take a callback method that returns a widget as a parameter, name it `builder`.
- Use simpler widget to make the code light-weight. Avoid `Container`.
- `///` is used for documentation, `//` is used for comments
  - https://dart.dev/language/comments
- [Format comments like sentences](https://dart.dev/effective-dart/documentation#do-format-comments-like-sentences). Capitalize the first word unless it's a case-sensitive identifier. End it with a period (or "!" or "?", I suppose). This is true for all comments: doc comments, inline stuff, even TODOs.
- Don't use abbreviations for your names, Use full names. 
  - Bad: `ctrl`, good: `controller`.
  - Bad: `ctx`, good: `context`.
  - Bad: `opt`, good: `option`.

# Learn more

- [StackOverflow](https://stackoverflow.com/): Existing answers from the community are there. Ask questions too.
- Github:
  - From [pub.dev](https://pub.dev/)
  - From [flutter/flutter](https://github.com/flutter/flutter)
  
  Look at the code base and the issues
- [Flutter - Dart API docs](https://api.flutter.dev/)
- [Flutter documentation](https://docs.flutter.dev/)
- Discord: The flutter team has a server and is quite responsive
- X: Most of the flutter team members are on X.
- In the code source. Dart and Flutter are open source, you can inspect the code of the package that are used.
- Confluence: Some brown bags presentation.
  -  [Brown Bag Sessions / Tech Talks](https://prudential-ps.atlassian.net/wiki/spaces/GTPTSympho/pages/212173343/Brown+Bag+Sessions+Tech+Talks)
  -  [Routing with Flutter and GoRouter](https://prudential-ps.atlassian.net/wiki/spaces/GTPTSympho/pages/328597595/Routing+with+Flutter+and+GoRouter)
  -  [FE architecture using ferry (GraphQL) go_router and riverpod](https://prudential-ps.atlassian.net/wiki/spaces/~7120209bf2fa96412b450bb37102315ee713ee/pages/329482305/FE+architecture+using+ferry+GraphQL+go_router+and+riverpod)


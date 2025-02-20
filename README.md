# Dart

- C like language.

## Type system


- Statically typed and compiled.
- `dynamic` is the equivalent of `any` in TypeScript. To be avoided.
- No union type like type script. It is not possible to to `String | int`. This is a design choice by the team.
- Null-safe: `String?` vs `String`. A `String` cannot be `null` while a `String?` can.
- Records: typed tuples.

## Compiled language

- The compiler can optimize the code if written in a proper way.
- `var` vs `final` vs `const`.
- `const` allows the compiler to do the work at compile time and not at run-time which will make it faster. To be used as much as possible.

## No meta programming

It was being experimentally implemented but dropped by the team for the moment.
Instead there is `build_runner` (Example of package for data classes: `freezed`, `built_value`).

  

# Flutter

- Recommended architecture is to share data by value and not by reference.
- Use immutable and `const` objects with a `copyWith`, `rebuild` method. (Example of package: `freezed`, `built_value`).

## Widgets

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

`StatelessWidgets`:

`StatefulWidgets`:

Create your own sub-widgets instead of creating functions.

## Theme

Theme can be defined using `ThemeData` which then can be used with `Theme.of(context)`.

## Constraints go down, sizes go up, parent set position.



## Good practices and convention:

- When a widget takes a sub-widget as a parameter, name it `child`.
- When a widget takes a list of sub-widgets as a parameter, name it `children`.
- When a widget take a callback method that returns a widget as a parameter, name it `builder`.
- Use simpler widget to make the code light-weight

# Learn more

- StackOverflow: Existing answers from the community are there. Ask questions too.
- Github:
  - From pub.dev
  - From flutter/flutter
  
  Look at the code base and the issues
- Discord: The flutter team has a server and is quite responsive
- X: Most of the flutter team members are on X.
- In the code source. Dart and Flutter are open source, you can inspect the code of the package that are used.
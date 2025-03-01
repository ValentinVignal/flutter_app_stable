# State management with Flutter

## `setState`

- https://api.flutter.dev/flutter/widgets/State/setState.html


### Pros:

- Simple

### Cons: 

- Need to pass parameters around to read the state.
- Need to pass callbacks around to update the state.

## `InheritedWidget`

- https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html
- https://www.youtube.com/watch?v=Zbm3hjPjQMk


### Pros:

- No need to pass parameters down the widget tree.

### Cons: 

- Verbose.
- Data cannot be updated directly.
- Relies on `StatefulWidget` to store and update the state.
- Need to pass the callback as a parameter.

## `InheritedNotifier`

- https://api.flutter.dev/flutter/widgets/InheritedNotifier-class.html

## `provider`

- https://pub.dev/packages/provider


## `riverpod`

- https://pub.dev/packages/riverpod
- https://pub.dev/packages/flutter_riverpod
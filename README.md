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

### Pros:

-  No need to pass parameters
-  No need to pass callbacks.
-  Efficient rebuilds.

### Cons:

- Verbose

## `provider`

- https://pub.dev/packages/provider

A wrapper around InheritedWidget to make them easier to use and more reusable.

By using provider instead of manually writing InheritedWidget, you get:

- simplified allocation/disposal of resources
- lazy-loading
- a vastly reduced boilerplate over making a new class every time
- devtool friendly – using Provider, the state of your application will be visible in the Flutter devtool
- a common way to consume these InheritedWidgets (See [Provider.of](https://pub.dev/documentation/provider/latest/provider/Provider/of.html)/[Consumer](https://pub.dev/documentation/provider/latest/provider/Consumer-class.html)/[Selector](https://pub.dev/documentation/provider/latest/provider/Selector-class.html))
- increased scalability for classes with a listening mechanism that grows exponentially in complexity (such as [ChangeNotifier](https://api.flutter.dev/flutter/foundation/ChangeNotifier-class.html), which is O(N) for dispatching notifications).

To read more about a provider, see its [documentation](https://pub.dev/documentation/provider/latest/provider/provider-library.html).




## `riverpod`

- https://pub.dev/packages/riverpod
- https://pub.dev/packages/flutter_ri-verpod
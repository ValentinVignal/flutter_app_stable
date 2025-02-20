int add(int a, int b) {
  return a + b;
}

int multiply(int a, int b) => a * b;

class MyParentClass {
  const MyParentClass(this.value);

  final int value;

  void doSomething() {
    print('Do something');
  }
}

class MyChildClass extends MyParentClass {
  const MyChildClass.namedConstructor(super.value);
  @override
  void doSomething() {
    print('Do something else');
  }
}

class MyOtherClass implements MyParentClass {
  const MyOtherClass({required this.value});

  @override
  final int value;
  @override
  void doSomething() {
    print('Do something different');
  }
}

void main() {}

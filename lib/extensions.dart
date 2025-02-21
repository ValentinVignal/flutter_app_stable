extension StringExtension on String {
  String get initials => split(' ').map((word) => word[0]).join('');
}

const name = 'Valentin Vignal';
final initials = name.initials; // 'VV'

//

extension IntSum on List<int> {
  int get sum => reduce((value, element) => value + element);
}

const listInt = [1, 2, 3];
final int sumInt = listInt.sum; // 6

//

extension DoubleSum on List<double> {
  double get sum => reduce((value, element) => value + element);
}

const listDouble = [1.0, 2.0, 3.0];
final double sumDouble = listDouble.sum; // 6.0

//

extension NumSum on List<num> {
  num get sum => reduce((value, element) => value + element);
}

const listNum = <num>[1, 2, 3];
final num sum = listNum.sum; // 6 as a num

//

extension NumSumGeneric<T extends num> on List<T> {
  T get sum2 => reduce((value, element) => value + element as T);
}

const listNumGeneric = <int>[1, 2, 3];
final sumNumGeneric = listNumGeneric.sum2; // 6 as a int.

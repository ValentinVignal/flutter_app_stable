/// A model given to `Evaluable` to be able to evaluate values from then entity.
abstract class EvaluableInput {
  /// Returns the text value of the [fieldID].
  String getText(String fieldID);
}

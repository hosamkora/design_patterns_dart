import 'package:design_patters_dart/strategy/sorting_algorithm.dart';

class Stack<T> {
  List<T> stackElements = [];

  /// sorting delegete
  SortingAlogtrism<T> _sotringAlogtrism;
  SortingAlogtrism<T> get sotringAlogtrism => _sotringAlogtrism;
  set sotringAlogtrism(SortingAlogtrism<T> value) => _sotringAlogtrism = value;

  Stack(this._sotringAlogtrism);

  void performSort() {
    stackElements = sotringAlogtrism.sort(stackElements).toList();
  }
}

import 'package:design_patters_dart/strategy/sorting_algorithm.dart';
import 'package:design_patters_dart/strategy/stack.dart';

void main(List<String> arguments) {
  final stack = Stack(MergeSort());
  stack.performSort();
  stack.sotringAlogtrism = BubbleSort();
  stack.performSort();
}

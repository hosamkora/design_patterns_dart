import 'package:design_patters_dart/singleton/eager_singleton.dart';
import 'package:design_patters_dart/singleton/lazy_singleton.dart';

void main(List<String> args) {
  final es1 = EagerSingleton();
  final es2 = EagerSingleton();
  print(es1.hashCode);
  print(es2.hashCode);

  final ls1 = LazySingleton();
  final ls2 = LazySingleton();
  print(ls1.hashCode);
  print(ls2.hashCode);
}

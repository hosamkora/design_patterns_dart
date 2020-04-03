import 'package:design_patters_dart/decorator/human.dart';
import 'package:design_patters_dart/decorator/wearable.dart';

void main(List<String> args) {
  final human = Human();
  final shirt = Shirt(human);
  final shoe = Shoe(shirt);
  final hat = Hat(shoe);
  final underWear = UnderWear(hat);

  underWear.wear();
}

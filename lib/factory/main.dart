import 'package:design_patters_dart/factory/car_shop.dart';

void main(List<String> args) {
  final bmwshop = BMWShop();
  final bydShop = BYDShop();
  bmwshop.prepareCar('Sedan').build();
  bmwshop.prepareCar('SUV').build();
  bydShop.prepareCar('Sedan').build();
  bydShop.prepareCar('SUV').build();
}

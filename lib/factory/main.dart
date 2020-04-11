import 'package:design_patters_dart/factory/car_shop.dart';

void main(List<String> args) {
  final bmwshop = BMWShop();
  final bydShop = BYDShop();
  bmwshop.orderCar('Sedan');
  bmwshop.orderCar('SUV');
  bydShop.orderCar('Sedan');
  bydShop.orderCar('SUV');
}

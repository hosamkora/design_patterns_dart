import 'package:design_patters_dart/factory/car_componants_factory.dart';
import 'package:design_patters_dart/factory/car_factory.dart';

abstract class CarShop {
  Car orderCar(String name, String style) {
    final car = prepareCar(style);
    cleanCar(car);
    makeInvoice(car);
    return car;
  }

  // abstract factory method
  Car prepareCar(String type);

  void cleanCar(Car car) {}
  void makeInvoice(Car car) {}
}

class BMWShop extends CarShop {
  @override
  Car prepareCar(String style) {
    Car car;
    if (style == 'SUV') {
      car = BMW(GenrmanSuvComponantsFactory());
    } else if (style == 'Sedan') {
      car = BMW(GenrmanSedanComponantsFactory());
    } else
      throw Exception('Unknown Car Style');
    return car;
  }
}

class BYDShop extends CarShop {
  @override
  Car prepareCar(String style) {
    Car car;
    if (style == 'SUV') {
      car = BYD(ChineeseSuvComponantsFactory());
    } else if (style == 'Sedan') {
      car = BYD(ChineeseSedanComponantsFactory());
    } else
      throw Exception('Unknown Car Style');
    return car;
  }
}

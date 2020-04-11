import 'package:design_patters_dart/factory/car_componants.dart';
import 'package:design_patters_dart/factory/car_componants_factory.dart';

abstract class Car {
  Engine engine;
  Seat seat;
  Tyre tyre;

  CarComponantsFactory carComponantsFactory;
  Car(this.carComponantsFactory);

  void build();
}

class BMW extends Car {
  BMW(CarComponantsFactory carComponantsFactory) : super(carComponantsFactory);

  @override
  void build() {
    print(carComponantsFactory.runtimeType);
    engine = carComponantsFactory.createEngine();
    tyre = carComponantsFactory.createTyre();
    seat = carComponantsFactory.createSeat();
  }
}

class BYD extends Car {
  BYD(CarComponantsFactory carComponantsFactory) : super(carComponantsFactory);

  @override
  void build() {
    print(carComponantsFactory.runtimeType);
    engine = carComponantsFactory.createEngine();
    tyre = carComponantsFactory.createTyre();
    seat = carComponantsFactory.createSeat();
  }
}

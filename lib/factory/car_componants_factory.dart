import 'package:design_patters_dart/factory/car_componants.dart';

abstract class CarComponantsFactory {
  Engine createEngine();
  Seat createSeat();
  Tyre createTyre();
}

class ChineeseSedanComponantsFactory implements CarComponantsFactory {
  @override
  Engine createEngine() => ChineeseSedanEngine();

  @override
  Seat createSeat() => ChineeseSedanSeat();

  @override
  Tyre createTyre() => ChineeseSedanTyre();
}

class ChineeseSuvComponantsFactory implements CarComponantsFactory {
  @override
  Engine createEngine() => ChineeseSuvEngine();

  @override
  Seat createSeat() => ChineeseSuvSeat();

  @override
  Tyre createTyre() => ChineeseSuvTyre();
}

class GenrmanSedanComponantsFactory implements CarComponantsFactory {
  @override
  Engine createEngine() {
    return GermanSedanEngine();
  }

  @override
  Seat createSeat() {
    return GermanSedanSeat();
  }

  @override
  Tyre createTyre() {
    return GermanSedanTyre();
  }
}

class GenrmanSuvComponantsFactory implements CarComponantsFactory {
  @override
  Engine createEngine() {
    return GermanSuvEngine();
  }

  @override
  Seat createSeat() {
    return GermanSuvSeat();
  }

  @override
  Tyre createTyre() {
    return GermanSuvTyre();
  }
}

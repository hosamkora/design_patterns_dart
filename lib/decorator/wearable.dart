abstract class Wearable {
  void wear();
}

abstract class Clothes implements Wearable {
  final Wearable wearable;
  Clothes(this.wearable);
}

class Hat extends Clothes {
  Hat(Wearable wearable) : super(wearable);

  @override
  void wear() {
    wearable.wear();
    print('wearing hat');
  }
}

class Shoe extends Clothes {
  Shoe(Wearable wearable) : super(wearable);

  @override
  void wear() {
    wearable.wear();
    print("wearing shoe");
  }
}

class Shirt extends Clothes {
  Shirt(Wearable wearable) : super(wearable);

  @override
  void wear() {
    wearable.wear();
    print("wearing shirt");
  }
}

class UnderWear extends Clothes {
  UnderWear(Wearable wearable) : super(wearable);

  @override
  void wear() {
    wearable.wear();
    print("wearing underWear");
  }
}

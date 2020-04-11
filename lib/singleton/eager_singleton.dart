class EagerSingleton {
  static final EagerSingleton instance = EagerSingleton._();

  factory EagerSingleton() => instance;
  EagerSingleton._();
}

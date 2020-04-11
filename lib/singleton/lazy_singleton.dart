class LazySingleton {
  static LazySingleton instance;

  factory LazySingleton() => instance ??= LazySingleton._();
  LazySingleton._();
}

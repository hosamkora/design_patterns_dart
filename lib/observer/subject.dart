import 'package:design_patters_dart/observer/observer.dart';

abstract class Subject {
  void addObserver(Observer observer);
  void removeObserver(Observer observer);
  void notifyObservers();
  void notifyObserversWith<T>(T payload);
}

mixin SubjectMixin implements Subject {
  final List<Observer> _observers = [];

  @override
  void addObserver(Observer observer) => _observers.add(observer);
  @override
  void removeObserver(Observer observer) => _observers.remove(observer);
  @override
  void notifyObservers() => _observers.forEach((observer) => observer.update());
  @override
  void notifyObserversWith<T>(T payload) =>
      _observers.forEach((observer) => observer.updateWith(payload));
}

class YouTubeChannel with SubjectMixin {}

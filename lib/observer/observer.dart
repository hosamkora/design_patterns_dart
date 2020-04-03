import 'package:design_patters_dart/observer/subject.dart';

abstract class Observer {
  /// pull data from subject
  void update();

  /// data pushed from subject
  void updateWith<T>(T payload);
}

mixin ObserverMixin implements Observer {
  Subject subject;
  void unsubscribe() {
    subject?.removeObserver(this);
  }

  void subscribe(Subject subject) {
    this.subject = subject;
    subject.addObserver(this);
  }
}

class Subsciber with ObserverMixin {
  @override
  void update() {
    final youtubeChannel = subject as YouTubeChannel;
    print('update');
  }

  @override
  void updateWith<T>(T payload) {
    print('update with $payload');
  }
}

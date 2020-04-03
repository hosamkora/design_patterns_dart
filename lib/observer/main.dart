import 'package:design_patters_dart/observer/observer.dart';
import 'package:design_patters_dart/observer/subject.dart';

void main(List<String> args) {
  final channel = YouTubeChannel();
  final subsciberA = Subsciber();
  subsciberA.subscribe(channel);
  channel.notifyObservers();
  channel.notifyObserversWith<String>('Hoasm');
  subsciberA.unsubscribe();
  channel.notifyObservers();
  subsciberA.unsubscribe();
}

import 'package:design_patters_dart/decorator/wearable.dart';

class Human implements Wearable {
  @override
  void wear() {
    print('Human Wearing');
  }
}

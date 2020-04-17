import 'package:design_patters_dart/command/command.dart';
import 'package:design_patters_dart/command/tv.dart';

class VolumeUp implements Command {
  final TV tv;
  VolumeUp(this.tv);

  @override
  void execute() {
    tv.volUp();
  }
}

class VolumeDown implements Command {
  final TV tv;

  VolumeDown(this.tv);
  @override
  void execute() {
    tv.volDown();
  }
}

import 'package:design_patters_dart/command/command.dart';
import 'package:design_patters_dart/command/tv.dart';

class VolumeUp implements Command {
  final TV tv;
  int preState;
  VolumeUp(this.tv);

  @override
  void execute() {
    preState = tv.volume;
    tv.volUp();
  }

  @override
  void undo() => tv.volume = preState;
}

class VolumeDown implements Command {
  final TV tv;
  int preState;
  VolumeDown(this.tv);
  @override
  void execute() {
    preState = tv.volume;
    tv.volDown();
  }

  @override
  void undo() => tv.volume = preState;
}

class NoCommmand implements Command {
  @override
  void execute() {}

  @override
  void undo() {}
}

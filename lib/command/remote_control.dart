import 'package:design_patters_dart/command/command.dart';
import 'package:design_patters_dart/command/tv.dart';
import 'package:design_patters_dart/command/tv_commands.dart';

/// client
class RemoteControl {
  TV _tv;
  Button _volumeUpButton;
  Button _volumeDownButton;

  RemoteControl() {
    _tv = TV();
    final volUpCommand = VolumeUp(_tv);
    final volDownCommand = VolumeDown(_tv);
    _volumeUpButton = Button(volUpCommand);
    _volumeDownButton = Button(volDownCommand);
  }

  void pressVolumeUpButton() => _volumeUpButton.press();
  void pressVolumeDownButton() => _volumeDownButton.press();
}

/// Invoker
class Button {
  final Command onPressCommnad;

  Button(this.onPressCommnad);

  void press() => onPressCommnad.execute();
}

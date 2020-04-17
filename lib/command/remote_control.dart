import 'package:design_patters_dart/command/command.dart';
import 'package:design_patters_dart/command/tv.dart';
import 'package:design_patters_dart/command/tv_commands.dart';

/// client
class RemoteControl {
  TV _tv;
  Button _volumeUpButton;
  Button _volumeDownButton;
  Command _lastCommand;

  RemoteControl() {
    _tv = TV();

    final volUpCommand = VolumeUp(_tv);
    final volDownCommand = VolumeDown(_tv);

    _volumeUpButton = Button(volUpCommand);
    _volumeDownButton = Button(volDownCommand);

    _lastCommand = NoCommmand();
  }

  void pressVolumeUpButton() {
    _lastCommand = _volumeUpButton.onPressCommnad;
    _volumeUpButton.press();
  }

  void pressVolumeDownButton() {
    _lastCommand = _volumeDownButton.onPressCommnad;
    _volumeDownButton.press();
  }

  void pressUndoButton() {
    _lastCommand.undo();
  }
}

/// Invoker
class Button {
  final Command onPressCommnad;

  Button(this.onPressCommnad);

  void press() => onPressCommnad.execute();
}

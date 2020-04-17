import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:design_patters_dart/command/remote_control.dart';

void main(List<String> args) {
  final remote = RemoteControl();

  final inputStream =
      stdin.transform(utf8.decoder).transform(const LineSplitter());

  final streamSubscription = inputStream.listen(null);

  streamSubscription.onData((line) {
    if (line == 'exit') exit(streamSubscription);
    handleInput(line, remote);
  });
}

void exit(StreamSubscription streamSubscription) {
  streamSubscription.cancel();
}

void handleInput(String line, RemoteControl remote) {
  switch (line) {
    case 'u':
      remote.pressVolumeUpButton();
      break;
    case 'd':
      remote.pressVolumeDownButton();
      break;
    case 'undo':
      remote.pressUndoButton();
      break;
    default:
      print('noraml line: $line');
      break;
  }
}

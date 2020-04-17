/// Reciever
class TV {
  int _volume = 0;
  set volume(int v) {
    if (v >= 0 && v <= 100) _volume = v;
    print(_volume);
  }

  int get volume => _volume;

  void volUp() => volume++;
  void volDown() => volume--;
}

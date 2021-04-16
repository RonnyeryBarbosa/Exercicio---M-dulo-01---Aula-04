class CounterModel {
  int _counter = 0;

  void incrementCounter() {
    _counter++;
  }

  int get counter {
    return _counter;
  }

  void modifierCounter(int valor, Function(int, int) operation) {
    _counter = operation(valor, _counter);
  }
}

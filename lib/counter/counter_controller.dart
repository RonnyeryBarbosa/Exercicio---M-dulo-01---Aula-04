import 'package:counter/counter/counter_model.dart';

class CounterController {
  final model = CounterModel();

  String getCounter() {
    return model.counter.toString();
  }

  void incrementCounter() {
    model.modifierCounter(1, _add);
  }

  void decrementCounter() {
    model.modifierCounter(1, _remove);
  }

  int _add(int number1, int number2) {
    return number1 + number2;
  }

  int _remove(int number1, int number2) {
    if (number2 == 0) {
      return 0;
    }
    return (number1 - number2).abs();
  }
}

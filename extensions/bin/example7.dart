import 'dart:math' show Random;

// Extending Functions

void main(List<String> args) {
  print(add.callWithRandomValues()); // OUTPUT: 79
  print(subtract.callWithRandomValues()); // OUTPUT: -3
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

typedef IntFunction = int Function(int, int);

extension on IntFunction {
  int callWithRandomValues() {
    final random = Random();
    final a = random.nextInt(100);
    final b = random.nextInt(100);
    return call(a, b);
  }
}

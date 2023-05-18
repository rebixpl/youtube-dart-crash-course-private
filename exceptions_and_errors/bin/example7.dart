// Capturing Stack Trace
// Stack trace is a list of function calls that shows the execution flow of a program.

void main(List<String> args) {
  Dog(isTired: false).run(); // OUTPUT: Dog is running

  try {
    Dog(isTired: true).run();
  } catch (e, st) {
    print(e);
    print(st);
  }
}

class DogIsTiredException implements Exception {
  final String message;
  DogIsTiredException([this.message = 'Poor doggy is tired']);
}

class Dog {
  final bool isTired;

  const Dog({
    required this.isTired,
  });

  void run() {
    if (isTired) {
      throw DogIsTiredException("Poor doggy is tired");
    } else {
      print('Dog is running');
    }
  }
}

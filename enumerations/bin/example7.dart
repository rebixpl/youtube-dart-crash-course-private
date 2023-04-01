// Extending Enumerations

void main(List<String> args) {
  AnimalType.dog
    ..jump()
    ..run();

  AnimalType.cat
    ..jump()
    ..run();

  AnimalType.rabbit
    ..jump()
    ..run();

// AnimalType.dog is jumping...
// AnimalType.dog is running...
// AnimalType.cat is jumping...
// AnimalType.cat is running...
// AnimalType.rabbit is jumping...
// AnimalType.rabbit is running...
}

enum AnimalType {
  cat,
  dog,
  rabbit;

  void run() {
    print('$this is running...');
  }
}

extension Jump on AnimalType {
  void jump() {
    print('$this is jumping...');
  }
}

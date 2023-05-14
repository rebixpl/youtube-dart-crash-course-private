// Extending Enumerations

/* Here is the explanation for the code above:
1. The AnimalType enum has three values: cat, dog, and rabbit. 
2. The AnimalType enum has a run() method that prints a string to the console. 
3. The AnimalType enum is extended by the Jump extension. 
4. The Jump extension adds a jump() method to the AnimalType enum. */

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

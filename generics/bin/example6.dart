// Generic Mixins and Specialized Mixin Type Definitions

void main(List<String> args) {
  final person = Person(height: 1.8);
  // final dog = Dog(height: 0.5); // Error, we can't use double here
  final dog = Dog(height: 1);

  print('Person height: ${person.height}'); // OUTPUT: Person height: 1.8
  print('Dog height: ${dog.height}'); // OUTPUT: Dog height: 1
}

mixin HasHeight<H extends num> {
  H get height;
}

typedef HasIntHeight = HasHeight<int>;
typedef HasDoubleHeight = HasHeight<double>;

class Person with HasDoubleHeight {
  @override
  final double height; // this can be int

  const Person({required this.height});
}

class Dog with HasIntHeight {
  @override
  final int height; // this can be double

  const Dog({required this.height});
}

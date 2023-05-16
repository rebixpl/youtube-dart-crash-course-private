// MIXINS WITH LOGIC

void main(List<String> args) {
  final whiskers = Cat(age: 2);
  print(whiskers.age); // OUTPUT: 2
  whiskers.incrementAge();
  print(whiskers.age); // OUTPUT: 3
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age;

  Cat({required this.age});
}

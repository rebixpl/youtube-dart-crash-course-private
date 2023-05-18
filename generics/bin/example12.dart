// Generic Class Properties

void main(List<String> args) {
  print(Person(age: 20).getAgeRounded()); // OUTPUT: 20
  print(Person(age: 20.5).getAgeRounded()); // OUTPUT: 21
}

class Person<T extends num> {
  final T age;

  const Person({
    required this.age,
  });

  int getAgeRounded() => age.round();
}

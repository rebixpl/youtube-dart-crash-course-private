// Operators on Class Definitions

void main(List<String> args) {
  final meThisYear = Person(age: 18);
  print('Me this year: $meThisYear'); // OUTPUT: Me this year: Person(age = 18)
  final meNextYear = meThisYear + 1;
  print('Me next year: $meNextYear'); // OUTPUT: Me next year: Person(age = 19)
}

class Person {
  final int age;

  const Person({
    required this.age,
  });

  Person operator +(int years) => Person(age: age + years);

  @override
  String toString() => 'Person(age = $age)';
}

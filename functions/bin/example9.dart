void main(List<String> args) {
  doSomethingWithAge(age: 42); // OUTPUT: In 2 years, you will be 44 years old.
  doSomethingWithAge(age: null); // OUTPUT: You did not tell me your age.
}

void doSomethingWithAge({
  required int? age,
}) {
  if (age != null) {
    final in2Years = age + 2;
    print('In 2 years, you will be $in2Years years old.');
  } else {
    print('You did not tell me your age.');
  }
}

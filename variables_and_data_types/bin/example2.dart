void main(List<String> args) {
  final age = [1, 2, 3];
  age.removeAt(0);

  print(age); // [2,3]

  // Invalid code
  // age = [3, 4, 5]; // The final variable 'age' can only be set once.
}

void main(List<String> args) {
  describe(); // OUTPUT: Hello, world!
  describe(something: null); // OUTPUT: null
  describe(something: 'Hello, Dart!'); // OUTPUT: Hello, Dart!
}

void describe({
  String? something = 'Hello, world!',
}) {
  print(something);
}

// Stream.reduce

void main(List<String> args) async {
  // Way 1 to do it
  // int sum = 0;
  // await for (final age in getAllAges()) {
  //   sum += age;
  // }
  // print(sum);

  // way 2
  final sum = await getAllAges().reduce((add));
  print(sum);
}

int add(int a, int b) => a + b;

Stream<int> getAllAges() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}

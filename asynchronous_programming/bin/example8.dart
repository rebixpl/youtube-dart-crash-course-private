// Yielding Streams

void main(List<String> args) async {
  await for (final name in allNames()) {
    print(name);
  }
}

Stream<String> maleNames() async* {
  yield 'John';
  yield 'Peter';
  yield 'Paul';
}

Stream<String> femaleNames() async* {
  yield 'Mary';
  yield 'Jane';
  yield 'Sue';
}

Stream<String> allNames() async* {
  // method 1
  // await for (final maleName in maleNames()) {
  //   yield maleName;
  // }
  // await for (final femaleName in femaleNames()) {
  //   yield femaleName;
  // }

  // method 2
  yield* maleNames();
  yield* femaleNames();
}

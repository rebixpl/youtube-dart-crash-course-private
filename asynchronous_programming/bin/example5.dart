// Stream.asyncExpand

// asyncExpand allows us to transform each event into a Stream of events,
// and then flatten those streams of events into a single stream of events.
void main(List<String> args) async {
  await for (final character in getNames().asyncExpand(
    (name) => getCharactes(name),
  )) {
    print(character);
  }
}

Stream<String> getCharactes(String fromString) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(Duration(milliseconds: 300));
    yield fromString[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(milliseconds: 200));
  yield 'John';
  await Future.delayed(Duration(milliseconds: 200));
  yield 'Doe';
}

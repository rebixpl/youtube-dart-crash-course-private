// Stream.asyncMap and Fold

void main(List<String> args) async {
  final results = await getNames()
      .asyncMap(
    (name) => extractCharacters(name),
  )
      .fold('', (prev, next) {
    final elements = next.join(' ');
    return '$prev $elements';
  });

  print(results); // OUTPUT: J o h n J a n e J i l l
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  yield 'Jill';
}

Future<List<String>> extractCharacters(String from) async {
  final characters = <String>[];
  for (final character in from.split('')) {
    await Future.delayed(Duration(milliseconds: 100));
    characters.add(character);
  }
  return characters;
}

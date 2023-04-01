// Mapping Lists to Iterables

void main(List<String> args) {
  const names = ['John', 'Jane', 'Jack', 'Jill'];
  final upperCaseNames = names.map((name) {
    print('Map got called');
    return name.toUpperCase();
  });

  for (final name in upperCaseNames.take(2)) {
    print(name);
  }
}

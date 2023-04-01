import 'package:collection/collection.dart';
// Unmodifiable List Views

void main(List<String> args) {
  final names = ['John', 'Jane'];
  names.add('Jack');

  try {
    final readOnlyList = UnmodifiableListView(names);
    print(readOnlyList); // OUTPUT: [John, Jane, Jack]
    readOnlyList.add('Jill');
  } catch (e) {
    print(e); // Unsupported operation: Cannot add to an unmodifiable list
  }
}

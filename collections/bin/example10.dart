// Extending ListBase to create a Safer List

import 'dart:collection';

void main(List<String> args) {
  // final List<String> names = [];
  // print(names.first); // ERROR
  // print(names.last); // ERROR
  // print(names[1]); // ERROR

  // final values = ['foo', 'bar'];
  // values.length = 3; // ERROR: type 'Null' is not a subtype of type 'String' in type cast

  const notFound = 'NOT_FOUND';
  const defaultString = 'DEFAULT_VALUE';

  final myList = SafeList(
    defaultValue: defaultString,
    absentValue: notFound,
    values: ['Bar', 'Baz'],
  );

  print(myList); // OUTPUT: [Bar, Baz]
  print('----------------');
  print(myList[0]); // OUTPUT: Bar
  print('----------------');
  print(myList[2]); // OUTPUT: NOT_FOUND
  print('----------------');

  print('----------------');
  myList.length = 4;
  print(myList[3]); // OUTPUT: 'DEFAULT_VALUE'
  print(myList); // OUTPUT: [Bar, Baz, DEFAULT_VALUE, DEFAULT_VALUE]

  print('----------------');
  myList.length = 0;
  print(myList); // OUTPUT: []
  print(myList.first); // OUTPUT: NOT_FOUND
  print(myList.last); // OUTPUT: NOT_FOUND
}

class SafeList<T> extends ListBase<T> {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList({
    required this.defaultValue,
    required this.absentValue,
    List<T>? values,
  }) : _list = values ?? [];

  @override
  T operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(
        List.filled(newLength - _list.length, defaultValue),
      );
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}

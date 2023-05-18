// Type Matching

/// EXAMPLE WITHOUT GENERICS
// void main(List<String> args) {
//   print(doTypesMatch(1, 2)); // OUTPUT: true
//   print(doTypesMatch(1, 2.2)); // OUTPUT: false
//   print(doTypesMatch(1, 'Foo')); // OUTPUT: false
//   print(doTypesMatch('Foo', 'Bar')); // OUTPUT: true
// }

// bool doTypesMatch(Object a, Object b) {
//   return a.runtimeType == b.runtimeType;
// }

/// EXAMPLE WITH GENERICS
void main(List<String> args) {
  print(doTypesMatch(1, 2)); // OUTPUT: true
  print(doTypesMatch(1, 2.2)); // OUTPUT: false
  print(doTypesMatch(1, 'Foo')); // OUTPUT: false
  print(doTypesMatch('Foo', 'Bar')); // OUTPUT: true
}

bool doTypesMatch<L, R>(L a, R b) => L == R;

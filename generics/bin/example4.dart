// Unconstrained Generic Type Definitions

void main(List<String> args) {
  const one = KeyValue(1, 2);
  print(one); // OUTPUT: MapEntry(1: 2)
  const two = KeyValue(1, 2.2); // MapEntry<int, double>
  print(two); // OUTPUT: MapEntry(1: 2.2)
  const three = KeyValue(1, 'Foo'); // MapEntry<int, String>
  print(three); // OUTPUT: MapEntry(1: Foo)
  const KeyValue four = KeyValue(1, 2); // MapEntry<dynamic, dynamic>
  print(four); // OUTPUT: MapEntry(1: 2)
}

typedef KeyValue<K, V> = MapEntry<K, V>;

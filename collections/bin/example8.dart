import 'package:collection/collection.dart';
// Unmodifiable Map Views

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
    'address': {
      'street': 'Main Street',
      'city': 'New York',
    },
  };

  final info2 = UnmodifiableMapView(info);

  info.addAll(
    {
      'phone': '123-45677890',
    },
  );

  print(
      info); // Output: {name: John, age: 30, address: {street: Main Street, city: New York}, phone: 123-45677890}

  try {
    info2.addAll(
      {
        'phone': '123-45677890',
      },
    );
  } catch (e) {
    print(e); // Output: Unsupported operation: Cannot modify unmodifiable map
  }
}

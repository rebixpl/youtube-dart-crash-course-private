import 'package:collection/collection.dart';
// Unmodifiable Map Views

/* Here is the explanation for the code above:
1. We have a Map<String, dynamic> info which contains some data.
2. We create an UnmodifiableMapView using the info Map object.
3. We add a new key/value pair to the info Map object
4. The UnmodifiableMapView info2 cannot be modified, so it throws an exception 
when we try to add a new key/value pair. */

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

  print(info); // Output: {name: John, age: 30, address:
  // {street: Main Street, city: New York}, phone: 123-45677890}

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

// Maps

/* Here is the explanation for the code above:
1. Maps are like objects in JavaScript, but they are not objects. They are
   similar to objects in JavaScript.
2. To create a map, use the curly braces and assign the values to the keys.
3. To access the values from the map, use the keys.
4. To get all the keys, use the keys property.
5. To get all the values, use the values property.
6. To insert a new key-value pair, use the putIfAbsent method.
7. To update the value, simply assign the new value to the key.
8. To iterate over the map, use the entries property.
9. To check if the key is present in the map, use the containsKey method.
10. If the key is not present in the map, the value will be null.
11. Maps can also have integer keys. */

void main(List<String> args) {
  final info = {
    'name': 'Foo',
    'age': 10,
  };
  print(info);
  print(info['name']);
  print(info['age']);
  print('------------------');

  print(info.keys);
  print(info.values);
  print('------------------');

  info.putIfAbsent(
    'height',
    () => 180,
  );
  print(info);
  print('------------------');

  info['height'] = 190;
  print(info);
  print('------------------');

  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }
  print('------------------');

  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print('Height is not found');
  }

  print('------------------');

  print(info['weight']);
  print('------------------');

  final mapWithIntKeys = {
    10: 20,
    30: 40,
  };
  print(mapWithIntKeys);
  print(mapWithIntKeys[10]);
  print('------------------');
}

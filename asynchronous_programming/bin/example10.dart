// Stream Transformers

import 'dart:async';

void main(List<String> args) async {
  await for (final capitalizedName in names.toUpperCase()) {
    print(capitalizedName);
  }
}

Stream<String> names = Stream.fromIterable(
  [
    'Seth',
    'Kathy',
    'Lars',
  ],
);

extension on Stream<String> {
  Stream<String> toUpperCase() => transform(ToUpperCase());
}

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map(
      (name) => name.toUpperCase(),
    );
  }
}

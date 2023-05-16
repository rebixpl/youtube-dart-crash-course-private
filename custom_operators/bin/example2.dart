// Multiplying an Iterable

void main(List<String> args) {
  const names = ['Seth', 'Kathy', 'Ethan', 'Megan'];
  final result = names * 3;
  print(
      result); // OUTPUT: (Seth, Kathy, Ethan, Megan, Seth, Kathy, Ethan, Megan, Seth, ..., Ethan, Megan)
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}

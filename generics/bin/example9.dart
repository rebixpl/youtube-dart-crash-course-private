// Handling Lack of Common Ancestors

void main(List<String> args) {
  print(1.toInt() == 1); // OUTPUT: true
  print((2.2).toInt() == 2); // OUTPUT: true
  print((2.0).toInt() == 2); // OUTPUT: true
  print('3'.toInt() == 3); // OUTPUT: true
  print(['4', '5'].toInt() == 3); // OUTPUT: false
  print([4, 5].toInt() == 9); // OUTPUT: true
  print(['2.4', '3.5'].toInt() == 6); // OUTPUT: true
  print(['2', '3.5'].toInt() == 6); // OUTPUT: true
  print({'2', 3, '4.2'}.toInt() == 9); // OUTPUT: true
  print(['2', 3, '4.2', 5.3].toInt() == 14); // OUTPUT: true
}

extension ToInt on Object {
  int toInt() {
    final list = [
      if (this is Iterable<Object>)
        ...this as Iterable<Object>
      else if (this is int)
        [this as int]
      else
        (double.tryParse(toString()) ?? 0.0).round()
    ];

    return list
        .map(
          (e) => (double.tryParse(
                    e.toString(),
                  ) ??
                  0)
              .round(),
        )
        .reduce((lhs, rhs) => lhs + rhs);
  }
}

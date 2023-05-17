// Range on int

void main(List<String> args) {
  // 1.to(10) -> Iterable [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  // 10.to(1) -> Iterable [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  // 1.to(10, inclusive: false) -> Iterable [1, 2, 3, 4, 5, 6, 7, 8, 9]

  print(1.to(10)); // OUTPUT: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  print(1.to(10, inclusive: false)); // OUTPUT: [1, 2, 3, 4, 5, 6, 7, 8, 9]
  print(10.to(1)); // OUTPUT: [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  print(10.to(1, inclusive: false)); // OUTPUT: [10, 9, 8, 7, 6, 5, 4, 3, 2]
  print(10.to(10)); // OUTPUT: [10]
  print(10.to(10, inclusive: false)); // OUTPUT: []
}

extension on int {
  Iterable<int> to(int end, {bool inclusive = true}) => end > this
      ? [for (int i = this; i < end; i++) i, if (inclusive) end]
      : [for (int i = this; i > end; i--) i, if (inclusive) end];
}

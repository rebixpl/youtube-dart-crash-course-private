/// Addiction of Two Optional Integers

void main(List<String> args) {
  int? value1 = 20;
  int? value2 = 30;
  final result = value1 + value2;

  print(add()); // OUTPUT: 0
  print(add(1, null)); // OUTPUT: 1
  print(add(null, 1)); // OUTPUT: 1
  print(add(1, 1)); // OUTPUT: 2
}

void bla(
  int? value1,
  int? value2,
) {
  final result = value1 + value2;
}

int add([int? a, int? b]) {
  return a + b;
}

extension NullableAdd<T extends num> on T? {
  T operator +(T? other) {
    final thisShadow = this;

    // if this != null && other == null, return this
    if (this != null && other == null) {
      return this as T;
    }
    // if this == null && other != null, return other
    else if (this == null && other != null) {
      return other;
    }
    // if this != null && other != null, return this + other
    else if (thisShadow != null && other != null) {
      return thisShadow + other as T;
    }
    // if this != null && other == null, return 0
    else {
      return 0 as T;
    }

    // final thisShadow = this;
    // if (thisShadow == null || other == null) {
    //   return null;
    // } else {
    //   return thisShadow + other as T;
    // }
  }
}

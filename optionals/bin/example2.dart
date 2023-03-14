/// untyped null values

void main(List<String> args) {
  const someValue =
      null; // Type: dynamic, - because dart doen't have understanding right now,
  // what null really represents
  print(someValue); // OUTPUT: null
}

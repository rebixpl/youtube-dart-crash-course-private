// lazy initialization and errors

late String name;

void main(List<String> args) {
  try {
    print(name);
  } catch (e) {
    print(
        e); // OUTPUT: LateInitializationError: Field 'name' has not been initialized.
  }

  name = 'Foo Bar';
  print(name); // OUTPUT: Foo Bar
}

// specifying data types

void main(List<String> args) {
  /// you can use linter rule 'always_specify_types' in 'analysis_options.yaml'
  /// to tell dart, that you always want to specify data type, but this is not recommended

  const String yourName = 'foo bar';
  final hisName = yourName;
  print(yourName);
  print(hisName);
}

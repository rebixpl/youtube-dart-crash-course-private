// Implementing Comparable on Enumerations

void main(List<String> args) {
  // Because the enum is comparable, we can use the sort method
  print([
    ...TeslaCars.values
  ]..sort()); // OUTPUT: [TeslaCars.modelX, TeslaCars.model3, TeslaCars.modelS, TeslaCars.modelY]
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelS(weightInKG: 2.2),
  model3(weightInKG: 2.1),
  modelX(weightInKG: 1.8),
  modelY(weightInKG: 2.4);

  final double weightInKG;

  const TeslaCars({required this.weightInKG});

  @override
  int compareTo(TeslaCars other) => weightInKG.compareTo(other.weightInKG);
}

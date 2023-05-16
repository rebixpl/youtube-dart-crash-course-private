// Implementing Comparable on Enumerations

/* Here is the explanation for the code above:
1. The enum TeslaCars implements the Comparable interface.
2. The compareTo method is overridden to compare the weight of the car.
3. The sort method is called on the list of the enum values.
4. The output is a sorted list of the enum values. */

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

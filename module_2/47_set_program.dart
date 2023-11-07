//
// 47. Create a program using Set


void main() {
  Set<int> numberSet = {3, 7, 1, 5, 3, 9, 5};
  // Duplicates are automatically removed

  // Print the set
  print("Original Set: $numberSet");

  // Add a new number to the set
  numberSet.add(8);

  // Remove a number from the set
  numberSet.remove(3);

  // Check if a number is in the set
  bool containsSeven = numberSet.contains(7);

  // Print the modified set and the result of the contains check
  print("Modified Set: $numberSet");
  print("set contain 7? $containsSeven");

  // Iterate through the set and perform an operation on each element
  numberSet.forEach((number) {
    print("Square of $number: ${number * number}");
  });
}

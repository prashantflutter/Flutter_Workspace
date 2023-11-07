//48. Create a program using Map


void main() {
  // Create a map to store student names and their scores
  Map<String, dynamic> studentScores = {
    'Prashant': 95.5,
    'Mahendra': 97.0,
    'Darshan': 92.5,
  };

  // Print the map
  print("Student Scores:");
  for (var entry in studentScores.entries) {
    print("${entry.key}: ${entry.value}");
  }

  // Calculate the average score
  double totalScore = 0.0;
  for (var score in studentScores.values) {
    totalScore += score;
  }

  double averageScore = totalScore / studentScores.length;

  // Print the average score
  print("Average Score: $averageScore");
}

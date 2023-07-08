void main() {
  int degree = 85; // Replace with the desired degree out of 100

  String grade = calculateGrade(degree);

  print('The grade for $degree out of 100 is $grade.');
}

String calculateGrade(int degree) {
  String grade;

  switch (degree ~/ 10) {
    case 10:
    case 9:
      grade = 'A';
      break;
    case 8:
      grade = 'B';
      break;
    case 7:
      grade = 'C';
      break;
    case 6:
      grade = 'D';
      break;
    default:
      grade = 'F';
      break;
  }

  return grade;
}
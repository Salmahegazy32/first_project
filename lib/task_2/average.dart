void main() {
  double num1 = 4.5; // Replace with the first number
  double num2 = 7.2; // Replace with the second number
  double num3 = 5.8; // Replace with the third number

  double average = calculateAverage(num1, num2, num3);

  print('The average of $num1, $num2, and $num3 is $average.');
}

double calculateAverage(double num1, double num2, double num3) {
  return (num1 + num2 + num3) / 3;
}
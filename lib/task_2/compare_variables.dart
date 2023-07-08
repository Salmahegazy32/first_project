void main() {
  int var1 = 5; // Replace with the first variable
  int var2 = 8; // Replace with the second variable

  compareVariables(var1, var2);
}

void compareVariables(int var1, int var2) {
  if (var1 == var2) {
    print('$var1 is equal to $var2');
  } else if (var1 < var2) {
    print('$var1 is less than $var2');
  } else {
    print('$var1 is greater than $var2');
  }
}
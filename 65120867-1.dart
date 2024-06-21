import 'dart:math';

double calculateTriangleArea(double sideA, double sideB, double sideC) {
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    return -1;
  }
  
  if (sideA + sideB <= sideC || sideA + sideC <= sideB || sideB + sideC <= sideA) {
    return -2;
  }
  
  double semiPerimeter = (sideA + sideB + sideC) / 2;
  double area = sqrt(semiPerimeter * (semiPerimeter - sideA) * (semiPerimeter - sideB) * (semiPerimeter - sideC));
  
  return area;
}

void main() {
  double sideA = 3;
  double sideB = 4;
  double sideC = 5;
  
  double area = calculateTriangleArea(sideA, sideB, sideC);
  
  print('Area of the triangle: $area');
}

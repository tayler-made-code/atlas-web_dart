double calculateArea(double height, double base) {
  double area = 0.5 * height * base;
  // Convert the area to a string with two decimal places, then parse it back to a double
  String roundedAreaString = area.toStringAsFixed(2);
  double roundedArea = double.parse(roundedAreaString);
  return roundedArea;
}
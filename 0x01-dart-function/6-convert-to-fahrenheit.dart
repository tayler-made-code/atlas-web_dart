List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((tempInC) => double.parse((tempInC * 9 / 5 + 32).toStringAsFixed(2))).toList();
}
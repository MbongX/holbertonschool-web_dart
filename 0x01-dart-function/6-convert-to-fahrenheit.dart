List<double> convertToF(List<double> temperaturesInC) {
  List<double> convertedTemperatures = temperaturesInC
      .map((temp) => (((temp * 9 / 5) + 32) * 100).round() / 100)
      .toList();

  return convertedTemperatures;
}

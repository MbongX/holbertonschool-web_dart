import 'package:decimal/decimal.dart';
import 'dart:math';

void main(List<String> arguments){
  double piValue = 3.1415926;
  // Convert double pi -> string -> Decimal to avoid direct fromDouble errors  
  final Decimal piDecimal = Decimal.parse(piValue.toString());
  
  // Round to 2 decimal places
  final roundedPi = Decimal.parse(piDecimal.toStringAsFixed(2));
  
  print("Double: ${roundedPi}\n");
}
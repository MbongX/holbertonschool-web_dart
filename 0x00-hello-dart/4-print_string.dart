void main(List<String> arguments){
  String str = (arguments.isEmpty || arguments[0].isEmpty) ?  "Holberton School" : arguments[0];
  print(str * 3 + "\n");
  print(str.substring(0,9));
}
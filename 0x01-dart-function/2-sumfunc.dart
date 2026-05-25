int add(int a, int b){
  return (a+b);
}

int sub(int a, int b){
  
  return (a-b);
}

String showFunc(int a, int b){
  String addPrinter = "Add ${a} + ${b} = ${add(a, b)}";
  String subPrinter = "Sub ${a} - ${b} = ${sub(a, b)}";
  
  return (addPrinter + "\n" + subPrinter);
}
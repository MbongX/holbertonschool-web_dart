void main(List<String> arguments) {
  //check number of args
  assert(arguments.length == 1, "Only 1 argument required");
  
  // Evaluate if the arg is negative or positive
  int number = int.parse(arguments[0]);
  
  if(number > 0){
    print("${number} is positive");
  }
  else if(number == 0){
    print("${number} is zero");
  }
  else{
    print("${number} is negative");
  }
}
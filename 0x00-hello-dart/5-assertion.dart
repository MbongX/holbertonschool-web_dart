void main(List<String> arguments){
  //assertions
  // obtaining the int from the arguments
  // but first check if the number of args == 1
  assert(arguments.length == 1, "exactly one arguments is required");
  // now we can safely parse the argument
  int score = int.parse(arguments[0]);
  // Assert if the number is greater than or equal to 80
  assert(score >= 80, "The score must be bigger or equal to 80");
  print("You Passed");
}
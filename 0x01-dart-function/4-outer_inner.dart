late String finalName;
late String finalId;
  
void outer(String name, String id){
  // format the name here
  String initials = name.split(" ").map((word) => word[0]).join("");
  String lastName = name.split(" ").first;
  initials = initials[1];
  finalName = initials + "." + lastName;
  finalId = id;
  //calling the inner function
  print(inner());
}
  
String inner(){
  return ("Hello Agent $finalName, your ID is $finalId");
}
  

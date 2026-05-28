class outer_inner{
  static late String finalName;
  static late String finalId;
  
  static void outer(String name, String id){
    // format the name here
    String initials = name.split(" ").map((word) => word[0]).join("");
    initials = initials[1];
    String lastName = name.split(" ").first;
    finalName = initials + "." + lastName;
    finalId = id;
    
    print(inner());
  }
  
  static String inner(){
    //
    return ("Hello Agent $finalName, your ID is $finalId");
  }
  
}
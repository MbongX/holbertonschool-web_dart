// The Map object is a simple key value pair data structure => similar to a dictionary in python. Keys and values in a mao may be of any type {thus not strictly tied to one data type like other data structures}.
//  A map is a dynamic collection of key-value pairs. Each key in a map is unique, and each key maps to exactly one value. Maps are used to store and retrieve data based on keys, making them useful for various applications such as lookups, caching, and more.
// Maps are defined using the Map class in Dart, and they can be created using literals or constructors. The syntax for defining a map is as follows:
// A Map can grow and shrink dynamically at runtime
// Maps are unordered collections, meaning that the order of key-value pairs is not guaranteed. However, you can use the LinkedHashMap class if you need to maintain the insertion order of key-value pairs.
// Maps are mutable, allowing you to add, remove, and modify key-value pairs after the map has been created. You can use the [] operator to access and modify values in a map, and you can use methods like addAll(), remove(), and clear() to manipulate the contents of the map.
//
// Defining a map via literals
//   ->  var identifier = {key1:value1, key2:value2,key3:value3...[..,..,key_n:value_n]}
// Defining via a constructure
//  + First declare the Map
//   ->  var identifier = Map();
//  + Next initialize the map
//   ->  identifier[key1] = value1;
//   ->  identifier[key2] = value2;
//   ->  identifier[key3] = value3;
//in this approach we need to define the map constructure and initialize it

/* 
*  Some examples of maps:
*  var myMap = {'name': 'Alice', 'age': 30, 'city': 'New York'};
*  print (myMap);
*   -=> This prints the following output: {name: Alice, age: 30, city: New York}
*  var details = new Map();
*  details['Username'] = 'admin';
*  details['Password'] = '12345';
*  print(details);
*   -=> This prints the following output: {Username: admin, Password: 12345}
*
*  Note − A map value can be any object including NULL. 
*  
*  Map Properties
*  -=> The Map class in the dart:core package defines the following properties -
*
*  + Keys : Returns an iterable of the keys in the map.
*  + Values : Returns an iterable of the values in the map.
*  + Length : Returns the number of key-value pairs in the map.
*  + IsEmpty : Returns true if there are no key-value pairs in the map.
*  + IsNotEmpty : Returns true if there is at least one key-value pair in the map. 
* 
*  Map Functions
*  The following are commonly used functions for manipuating Maps in Dart.
*  
*  + addAll() : This function is used to add all key-value pairs of other to this map
*  + clear() : This function is used to clear pairs from the map
*  + remove() : This function is used to remove a key and its associated value from the map
*  + containsKey() : This function is used to check if a key exists in the map
*  + containsValue() : This function is used to check if a value exists in the map
*  + forEach() : This function is used to apply a function to each key-value pair in the map
*  + map() : This function is used to transform the values in the map using a provided function
*  + where() : This function is used to filter the key-value pairs in the map based on a provided condition
*  + update() : This function is used to update the value associated with a key in the map
*  + updateAll() : This function is used to update the values associated with all keys in the map using a provided function
*  + putIfAbsent() : This function is used to add a key-value pair to the map if the key does not already exist
*  + removeWhere() : This function is used to remove key-value pairs from the map based on a provided condition
*  + toString() : This function is used to get a string representation of the map
*  + toList() : This function is used to convert the map's keys or values to a list
*  + toSet() : This function is used to convert the map's keys or values to a set
*  
*/
int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // A function to calculate the total number of points for each team and return the winning team
  /*
If teamA points > teamB points return 1
If teamA points < teamB points return 2
If teamA points = TeamB points return 0 
*/

  /*
A free throw shot counts as 1 Point.
A 2 pointer shot counts as 2 Points.
A 3 pointer shot counts as 3 Points.
 */
  final int freeThrowPoints = 1;
  final int twoPointerPoints = 2;
  final int threePointerPoints = 3;

  int teamAPoints = 0, teamBPoints = 0;

  teamA.forEach((key, value) {
    switch (key) {
      case 'Free throws':
        teamAPoints = teamAPoints + (value * freeThrowPoints);
        break;
      case '2 pointers':
        teamAPoints = teamAPoints + (value * twoPointerPoints);
        break;
      case '3 pointers':
        teamAPoints = teamAPoints + (value * threePointerPoints);
        break;
      default:
        break;
    }
    ;
  });
  teamB.forEach((key, value) {
    switch (key) {
      case 'Free throws':
        teamBPoints = teamBPoints + (value * freeThrowPoints);
        break;
      case '2 pointers':
        teamBPoints = teamBPoints + (value * twoPointerPoints);
        break;
      case '3 pointers':
        teamBPoints = teamBPoints + (value * threePointerPoints);
        break;
      default:
        break;
    }
  });

  if (teamAPoints > teamBPoints) return 1;
  if (teamBPoints < teamBPoints) return 2;
  if (teamAPoints == teamBPoints)
    return 0;
  else {
    return -1; // This is a default return value in case of an error
  }
}

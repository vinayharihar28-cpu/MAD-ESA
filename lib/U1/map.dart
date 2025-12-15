void main() {
// Creating a Map
  Map<String, int> inventory = {
    'Apples': 50,
    'Bananas': 30,
    'Oranges': 20,
  };


// Accessing a value by key
  print('Apples: ${inventory['Apples']}'); // Output: Apples: 50
// Checking the length of the map
  print('Inventory Length: ${inventory.length}');
  // Checking if the map is empty
  print('Is Inventory Empty?: ${inventory.isEmpty}'); // Output: Is Inventory Empty?: false
// Getting all keys
  print('Inventory Keys: ${inventory.keys}'); // Output: Inventory Keys: (Apples, Bananas, Grapes)
// Getting all values
  print('Inventory Values: ${inventory.values}'); // Output: Inventory Values: (50, 30, 40)
  // Iterating over the map
  inventory.forEach((key, value) {
    print('$key: $value');
  });
// Output:
// Apples: 50
// Bananas: 30
// Grapes: 40
// Clearing the map
  inventory.clear();
  print('Cleared Inventory: $inventory'); // Output: Cleared Inventory: {}
}
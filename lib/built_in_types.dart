void main() {
  /******** Numbers in Dart **********/
  // int and double
  /// Integers are without decimal points
  var x = 1;
  var hex = 0xDEADBEEF;

  /// Doubles are with decimal points
  var y = 1.1;
  var exponents = 1.42e5;

  ///You can also declare a variable as a num.
  ///If you do this, the variable can have both integer and double values.
  num qwerty = 1; // x can have both int and double values
  qwerty += 2.5;

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  /******** Strings in Dart **********/
  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // Check whether a string contains another string.
  assert('Never odd or even'.contains('odd'));

  // Does a string start with another string?
  assert('Never odd or even'.startsWith('Never'));

  // Does a string end with another string?
  assert('Never odd or even'.endsWith('even'));

  // Find the location of a string inside a string.
  assert('Never odd or even'.indexOf('odd') == 6);
  // Grab a substring.
  assert('Never odd or even'.substring(6, 9) == 'odd');

// Split a string using a string pattern.
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');

  // Get a UTF-16 code unit (as a string) by index.
  assert('Never odd or even'[0] == 'N');

  /// Lists in Dart
  // Use split() with an empty string parameter to get
  // a list of all characters (as Strings); good for
  // iterating.
  for (final char in 'hello'.split('')) {
    print(char);
  }

// Get all the UTF-16 code units in the string.
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);

  /******** Lists in Dart **********/
  // Create an empty list of strings.
  var grains = <String>[];
  assert(grains.isEmpty);

  // Create a list using a list literal.
  var fruits = ['apples', 'oranges'];

  // Add to a list.
  fruits.add('kiwis');

  // Add multiple items to a list.
  fruits.addAll(['grapes', 'bananas']);

  // Get the list length.
  assert(fruits.length == 5);

  // Remove a single item.
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);

  // Remove all elements from a list.
  fruits.clear();
  assert(fruits.isEmpty);

  // You can also create a List using one of the constructors.
  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));

  // Using spread operator
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  assert(list2.length == 4);

  // Using null aware spread operator
  var list3 = [0, ...?list];
  assert(list3.length == 1);

  /// Dart offers collection if and collection for
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  // Collection for
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');

  /******** Sets in Dart **********/
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  // Creates a new SET
  var names = <String>{};

  // Append to a set
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  // Create a compile-time constant
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };

  /******** Maps in Dart **********/

  // Using Map literal
  var gifts = <String, String>{};
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  // Using Map Type
  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Append to a map
  var gift = {'first': 'partridge'};
  gift['fourth'] = 'calling birds';

  // Retrieve an item from a map
  var gifty = {'first': 'partridge'};
  assert(gifty['first'] == 'partridge');

  // Create a compile-time constant
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
}

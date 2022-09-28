/// Basic Variables in Dart code
/// Dart variables are static

void main() {
  /// Creating a variable with var
  /// Variables store references.
  /// The variable [name] contains references to a Strong object with value of "bob

  /// The type of the variable is automatically determined as a String
  ///  The type can be specified too
  /// If an object isn't restricted to a single object, specify the [Object] type or use [dynamic]
  var name = 'bob';

  /// Root of all non-nullable Dart classes
  Object lastName = 'Gyekye';

  /// String class
  String firstName = 'Richmond';

  /// Uninitialized variables that have nullable type have initial value null
  int? age;
  assert(age == null);

  /// A Dart non-nullable variable must be assigned before use
  int lineCount;
  if (firstName.length > 20) {
    lineCount = firstName.length;
  } else {
    lineCount = 0;
  }

  /// [lineCount] is not null
  print(lineCount);

  /// When a variable is set before use, we annotate it with a late declaration
  late String middleName;

  /// If a variable never changes, we annotate it with final or const
  ///  const is a compile-time constant
  ///  A final variable can only be set once
  final homeTown;

  // Final with Type annotation
  final String MotherName;
  const dateOfBirth = '030601';

  //You can change the value of a non-final, non-const variable,
  // even if it used to have a const value:
  var items = const [];
  items = [1, 2, 4];

  //You can’t change the value of a const variable:
  const baz = []; // Equivalent to `const []`
  // baz = [42]; Error: Constant variables can't be assigned a value.

}


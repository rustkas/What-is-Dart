void main() {
  print(List() is List<Object>);
  print(List() is List<dynamic>);
  print(List<String>() is List<Object>);
// Not all objects are strings
  print('Not all objects are strings -> ${List<Object>() is! List<String>}');
// Strings are not ints
  print('Strings are not ints -> ${List<String>() is! List<int>}');
// TRUE! Every list of string is a list
  print('Every list of string is a list -> ${List<String>() is List}');
// TRUE! It's OK to pass a List to a method that expects List<String>
  print("TRUE! It's OK to pass a List"
      'to a method that expects List<String> -> '
      '${List() is List<String>}');
}

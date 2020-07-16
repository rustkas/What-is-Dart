import 'dart:html';

void main() {
  // Find an element.
  var elem = document.getElementById('id');

  // Handle events.
  elem.onClick.listen((event) => print('click!'));

  // Set an attribute.
  elem.attributes['name'] = 'value';

  // Add a child element.
  elem.children.add(Element.tag('p'));

  // Add a CSS class to each child element.
  elem.children.forEach((e) => e.classes.add('important'));
}
// webdev serve

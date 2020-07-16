import 'dart:math';

class Point {
  Point(this.x, this.y);
  double distanceTo(other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

  var x, y;
}

void main() {
  final p = Point(2, 3);
  final q = Point(3, 4);
  print('distance from p to q = ${p.distanceTo(q).toStringAsFixed(1)}');
}

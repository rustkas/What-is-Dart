import 'dart:math' as math show sqrt;

class Point {
  var x;
  var y;

  Point(this.x, this.y);

  double distanceTo(other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return math.sqrt(dx * dx + dy * dy);
  }
}

void main() {
  final p = Point(2, 3);
  final q = Point(3, 4);
  print('distance from p to q = ${p.distanceTo(q).toStringAsFixed(1)}');
}

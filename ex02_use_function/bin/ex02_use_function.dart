void main() => print(send('hello', 'Seth', 'Bob'));

String send(msg, to, from, [rate = 'First Class']) {
  return '${from} said ${msg} to ${to} via ${rate}';
}

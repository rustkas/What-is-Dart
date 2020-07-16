String send(msg, to, from, [rate = 'First Class']) {
  return '${from} said ${msg} to ${to} via ${rate}';
}

void main() {
  print(send('hello', 'Seth', 'Bob'));
}

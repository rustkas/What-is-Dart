import 'dart:isolate';

void echo(SendPort reply) {
  var port = ReceivePort();
  reply.send(port.sendPort);
  // print('Echo send port id = ${reply.hashCode}');
  port.listen((message) {
    reply.send('Echo: $message');
    if (message is String && message == 'stop') {
      reply.send('stop');
    }
  });
}

Future<void> main() async {
  ReceivePort isolate_port;
  isolate_port = ReceivePort();
  var isolate = await Isolate.spawn(echo, isolate_port.sendPort);
  SendPort isolate_sendPort;
  isolate_port.listen((response) {
    if (response is SendPort) {
      isolate_sendPort = response;
      // print(
      //     'Isolate send port id = ${isolate.controlPort.hashCode}, isolate_sendPort id = ${isolate_sendPort.hashCode}');
      isolate_sendPort.send('Hello, Dart!');
      isolate_sendPort.send('stop');
    } else if (response is String) {
      print(response);

      if (response == 'stop') {
        isolate.kill(priority: Isolate.immediate);
        isolate = null;
        isolate_port.close();
      }
    }
  });
}

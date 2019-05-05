import 'dart:async';
import 'dart:io';

void main() async {

  // a single subscription stream
  // StreamController controller = StreamController();

  // controller.stream.listen(
  //   (data) => print('Received data: ${data}'),
  //   onDone: () => print('no more data on stream') ,
  //   onError: (e) => print('Exception: $e')
  // );

  // controller.add('Hello');
  // controller.add('World!');

  // controller.addError('error');
  // await controller.close();
  // print('$controller is fully closed');

  // Broadcast stream (multiple listener)
  StreamController controller2 = StreamController();
  Stream controllerAsBroadcast = controller2.stream.asBroadcastStream();
  // controllerAsBroadcast.listen((data)=> print('Received data: ${data}'));
  // controllerAsBroadcast.listen((data)=> print('Received data again: ${data}'));
  controller2.add('Hello');
  controller2.add('World!');

  await for (var data in controllerAsBroadcast) {
    print('awaited for data: $data');
  }
}
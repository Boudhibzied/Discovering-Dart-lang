import 'dart:io';
import 'dart:async';
import 'dart:convert';

// Future

// void main() {
//   var result = Future(() => 'Hello, World!')
//   // print(result);
//   ..then((str) => print(str));

//   // var delayResult = Future.delayed(Duration(seconds: 5), ()  => 'displayed after 5 sec')
//   // ..then((str)  => print(str));

//   var showError = false;
//   Future(()  =>  showError ? throw 'there was an error' : '{"data": "Success"}')
//     .then((str)  => json.decode(str))
//     .then((dataMap)  => print(dataMap['data']))
//     .catchError((onError)  => print(onError));

//   HttpClient().getUrl(Uri.parse('https://swapi.co/api/people/1'))
//     .then((request) => request.close())
//     .then((response) =>
//       response.transform(Utf8Decoder()).listen(print))
//     .catchError((err) => print('there was an error: $err'));

// }

void main() async{
  var request = await HttpClient().getUrl(Uri.parse('https://swapi.co/api/people/1'));

  var response = await request.close(); 

  await for (var contents in response.transform(Utf8Decoder())) {
    print(contents);
  }
}
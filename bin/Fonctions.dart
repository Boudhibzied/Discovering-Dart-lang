import 'dart:io';
void main(List<String> args) {

  OPT_param('Hello ');
  OPT_param('Hello ', true);

}

OPT_param(String str, [bool opt = false]){
 opt ? print(str + name()) : print(str + 'world!');
}

name(){
  stdout.writeln('Type your name');
  String name = stdin.readLineSync();
  return name;
}


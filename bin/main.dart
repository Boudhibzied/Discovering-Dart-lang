import 'dart:io';
void main() {
  stdout.writeln('Type your name');
  String name = stdin.readLineSync();
  stdout.writeln('Hello ${name}!');
}
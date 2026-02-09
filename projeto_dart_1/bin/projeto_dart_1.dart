import 'dart:io';

void main() {
  print("Olá me chamo Dart, qual seu nome?");
  var nome = stdin.readLineSync();
  
  print("Qual sua idade?");
  var idade = stdin.readLineSync();

  print("Muito prazer, $nome, você tem $idade anos!");
}

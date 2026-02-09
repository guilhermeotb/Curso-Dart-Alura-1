import 'dart:io';

void main() {
 double valor1 = double.parse(stdin.readLineSync()!);
 double valor2 = double.parse(stdin.readLineSync()!); 
 String operacao = stdin.readLineSync()!;

 void soma(){
  print( valor1 + valor2);
}

void subtracao(){
  print( valor1 - valor2);
}

void divisao(){
  print( valor1 / valor2);
}

void multiplicacao(){
  print( valor1 * valor2);
}


if (operacao == "+"){
 soma();
}

if (operacao == "-"){
 subtracao();
}
 
 if (operacao == "/"){
 divisao();
}
 
 if (operacao == "*"){
 multiplicacao();
}
 


}

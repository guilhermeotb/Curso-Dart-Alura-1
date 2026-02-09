import 'dart:io';

void main() {
  double valor1 = 0;
   //double.parse(stdin.readLineSync()!);
  double valor2 = 0;
  //double.parse(stdin.readLineSync()!);
  String operacao = "";
  //stdin.readLineSync()!;

  void soma() {
    print(valor1 + valor2);
  }

  void subtracao() {
    print(valor1 - valor2);
  }

  void divisao() {
    print(valor1 / valor2);
  }

  void multiplicacao() {
    print(valor1 * valor2);
  }

  String? entrada = stdin.readLineSync();

  if(entrada != null){
    if (entrada != ""){
      valor1 = double.parse(entrada);
    }
  }

   entrada = stdin.readLineSync();
  if(entrada != null){
    if (entrada != ""){
      valor2 = double.parse(entrada);
    }
  }

  entrada = stdin.readLineSync();
  if(entrada != null){
    operacao = entrada;
    }


  switch (operacao) {
    case "+":
      soma();

    case "-":
      subtracao();

    case "*":
      multiplicacao();

    case "/":
      divisao();

      break;
  }






  } 




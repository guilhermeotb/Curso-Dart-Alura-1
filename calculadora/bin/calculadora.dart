import 'dart:io';

void main() {
  print("--- Calculadora em Dart ---");
  double valor1 = 0;

  double valor2 = 0;

  String operacao = "";

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

  void calcular() {
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

  print("Digite o Primeiro Valor");

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      valor1 = double.parse(entrada);
    }
  }

  print("Digite a Operação a Ser Realizada(+ , - , *, /)");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    operacao = entrada;
  }



  print("Digite o Segundo Valor");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      valor2 = double.parse(entrada);
    }
  }

  print("O Resultado da Operação é:");

  calcular();
}

import 'dart:io';

void main() {
  print("--- Calculadora em Dart ---");
  double valor1 = 0;

  double valor2 = 0;

  String operacao = "";

  String? entrada = "";

  List<String> operacoes = <String>["+", "-", "*", "/"];

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

  void getOperacao() {
    print("Digite a Operação a Ser Realizada ${operacoes.toString()} ");

    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      } else {
        print("Operação inválida");
        getOperacao();
      }
    }
  }

  print("Digite o Primeiro Valor");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      valor1 = double.parse(entrada!);
    }
  }

  getOperacao();

  print("Digite o Segundo Valor");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      valor2 = double.parse(entrada!);
    }
  }

  print("O Resultado da Operação é:");

  calcular();
}

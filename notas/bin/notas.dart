import 'dart:io';


void main() {

List<String> notas = <String>[]; 
menu(notas);

}

String getComando()  {
  print("Digite um Comando: 1- Adicionar nota, 2 - Listar Notas, 3 - Sair");
  List<String> comandos = <String>["1","2","3"];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if(entrada == null || !comandos.contains(entrada) ) {
    print("Comando inválido");
    getComando();
  }
  return entrada!;
}

List<String> adicionarNota(List<String> notas){
print("Escreva uma nota");
String? nota = "";
nota = stdin.readLineSync();

if (nota == null || nota.isEmpty){
  print("Não é possível adicionar uma nota vazia");
  adicionarNota(notas);
}

notas.add(nota!);
return notas;
}

void listarNotas(List<String> notas) {
  for(var i = 0; i < notas.length; i++){
    print("${i + 1}. ${notas[i]}");
  }
}

void menu(List<String> notas){

 cabecalho(); 

print("");
 String comando = getComando(); 
 print("");

 switch (comando){
  case "1":
  adicionarNota(notas);
  menu(notas);

  case "2":

  listarNotas(notas);
  menu(notas);

  case "3":
  print("Até breve!");

 }

}

void cabecalho(){
print(" ____  ____  _____ ____  _      _  ____  ____  ____  ____  ____    ____  _____   _      ____ _____ ____  ____ ");
print("/  _ \\/  __\\/  __//  _ \\/ \\  /|/ \\/_   \\/  _ \\/  _ \\/  _ \\/  __\\  /  _ \\/  __/  / \\  /|/  _ Y__ __Y  _ \\/ ___\\");
print("| / \\||  \\/|| |  _| / \\|| |\\ ||| | /   /| / \\|| | \\|| / \\||  \\/|  | | \\||  \\    | |\\ ||| / \\| / \\ | / \\||    \\");
print("| \\_/||    /| |_//| |-||| | \\||| |/   /_| |-||| |_/|| \\_/||    /  | |_/||  /_   | | \\||| \\_/| | | | |-||\\___ |");
print("\\____/\\_/\\_\\\\____\\\\_/ \\|\\_/  \\|\\_/\\____/\\_/ \\|\\____/\\____/\\_/\\_\\  \\____/\\____\\  \\_/  \\|\\____/ \\_/ \\_/ \\|\\____/");
print("                                                                                                              "); 
}
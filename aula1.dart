//LINGUAGEM DE DART

//Comece o código importando a biblioteca
//Para iniciar o arquivo, vou ao caminho dele e escrevo dart + nome do arquivo

// 1- Funções de input e conversão de dados, isso toda a biblioteca faz
import "dart:io";

// 2- O Dart precisa de uma função principal (void main)
void main(){
  //3 -  Print, printa na linguagem, dois prints irão pular linha
  print("Olá DS 18");

  //4 - STDOUT: Coloca o proximo comando na frente do anterior
  //Exemplo: Nome do usuário na frente do pedido.
  stdout.write("DS18");
  stdout.write(" Tchau");

  print("");

  //5 - INPUT: Primeiro a mensagem, depois a variavel
  print("Insira seu nome:");

  // ! Não pode ser nula 
  //String nome = stdin.readLineSynce()!

  // ? Pode ser nula
  String? nome = stdin.readLineSync();

  //Variavel no meio do texto, usa-se $
  print("Ola $nome, bem vindo!"); 

  //Usando o parse, na conversão de String para int
  stdout.write("Escreva sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  print("Sua idade é $idade");

  //6- TRATAMENTO DE ERRO: Entrada de letras num Iput de numeros
  stdout.write("Escreva um número aleatorio: ");
  //Lê o numero, se não preencher nada fica null
  String? numeroAleatorio = stdin.readLineSync();

  //Se o input for null, use a string vazia ""
  //tryParse uma condição dentro da tentativa de conversão
  //int se conseguir converter e null se não for numero
  int? numero = int.tryParse(numeroAleatorio ?? "");

  if (numeroAleatorio == null){
    print("Idade invalida.Digite apenas numeros");
    return;
  }
  print(numeroAleatorio);




}

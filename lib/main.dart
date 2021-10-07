import 'dart:math';

import 'package:flutter/material.dart';

/*
    Inicialização de variáveis
  */
// Variaveis Superiores
int total = 0;

// Campos estáticos
class Pedidos{
  static int total = 0;
}

/*
  Campos de instância devem ser inicializados
  - Inicialização ou construtor
*/
class Carrinho {
  int totalLinhas = 0;
  //late String item;
  late String item;
  int quantidade;

  Carrinho(this.item, this.quantidade);
}

/*
  3) Variáveis locais
*/
int calculaSalario(int salario){

  int resultado;
  if(salario > 1000){
    resultado = salario;
  }else{
    resultado = salario + 100;
  }

  return resultado;
}

main(){

  // 1) Inicialização de variáveis
  total = 10;
  print("total: $total");
  print("identificador ${Pedidos.total}");

  /*
    Campos de instância devem ser inicializados
    - Inicialização ou construtor
  */
  Carrinho carrinho = Carrinho("Capa celular", 2);

  /*
    3) Variáveis locais
  */
  int resultado = calculaSalario(800);
  print(resultado);

}

// int? numero = 10;
// String? nome = "Vinicius";

// Parâmetros nomeados são por padrão opcionais
// int soma({required int primeiro, int segundo = 0}){
//   return primeiro + segundo;
// }

// int totalCaracteres(String? texto){
//   // if(texto == null){
//   //   return 0;
//   // }
//   if(texto == null){
//     throw 'Texto não pode ser nulo';
//   }
//   return texto.length;
// }

// class Usuario{
//   String? _nome;
//   int totalCaracteres(){
//     String? nome = _nome;
//     if(nome == null){
//         return 0;
//     }
//     return nome.length;
//   }
// }

// 1) Late Keyword
// class Usuario{
//   late String nome;
//   void configuraNome(String texto){
//     nome = texto;
//   }
// }

// 2) Late com referência circular
// class Time{
//   late Treinador treinador;
// }
//
// class Treinador{
//   late Time time;
// }

// 3) late - Lazy (preguiçosa)
// int calculaTotalItens(){
//   print("calculaTotalItens: 3");
//   return 3;
// }
//
// class Carrinho{
//   late int totalItens = calculaTotalItens();
// }

// void main() {

  // Usuario usuario = Usuario();
  // usuario.configuraNome('Vinicius');
  // print(usuario.nome);

  // 2) Late com referência circular
  // Time time = Time();
  // Treinador treinador = Treinador();
  // //Configurar
  // time.treinador = treinador;
  // treinador.time = time;

  // 3) Lazy (preguiçosa)
  // Carrinho carrinho = Carrinho();
  // print("total: ${carrinho.totalItens}");

  //print(totalCaracteres("Vinicius"));

  //String? texto; // pode receber um valor nulo (nullable) -> promovida para non-nullable
  //texto = "Vinicius";

  // if(DateTime.now().hour < 12){
  //   texto = "verdadeiro";
  // }else{
  //   texto = "false";
  // }
  //
  // print("resultado: $texto");
  // print("temanho: ${texto.length}");

  // int resultado = soma(primeiro: 1, segundo: 2);
  // print("resultado: $resultado");

  /*
    Lista pode ser nula? NÃO
    Item pode ser nula? NÃO
  */
  // List<String> lista1 = [];
  // //print("Lista: ${lista1}");
  //
  // /*
  //   Lista pode ser nula? SIM
  //   Item pode ser nula? NÃO
  // */
  // List<String>? lista2;
  // //print("Lista2: ${lista2}");
  //
  // /*
  //   Lista pode ser nula? NÃO
  //   Item pode ser nula? SIM
  // */
  // List<String?> lista3 = [null, "item"];
  // //print("Lista3: ${lista3}");
  //
  // /*
  //   Lista pode ser nula? SIM
  //   Item pode ser nula? SIM
  // */
  // List<String?>? lista4 = [null, "item"];
  // //print("Lista4: ${lista4}");
  //
  // /*
  //   Map pode ser nulo? NÃO
  //   Item pode ser nulo? NÃO
  // */
  // Map<String, int> map1 = {};
  // //print("Map 1: ${map1}");
  //
  // /*
  //   Map pode ser nulo? SIM
  //   Item pode ser nulo? NÃO
  // */
  // Map<String, int>? map2;
  // //print("Map 2: ${map2}");
  //
  // /*
  //   Map pode ser nulo? NÃO
  //   Item pode ser nulo? SIM
  // */
  // Map<String, int?> map3 = {'idade': null};
  // //print("Map 3: ${map3}");
  //
  // /*
  //   Map pode ser nulo? SIM
  //   Item pode ser nulo? SIM
  // */
  // Map<String, int?>? map4 = {'idade': null};
  // //print("Map 4: ${map4}");
  //
  // //Exemplos de Maps
  // Map<String, String?> estados = {
  //   'SP': 'São Paulo',
  //   'RJ': 'Rio de Janeiro',
  // };

  //estados['MG'] = "Minas Gerais";
  //estados['MG'] = null;

  /*
    Para corrigir o erro da linha a abaixo tem 3 alternativas
    1- adicionar o ! na frente do valor atribuído
    2- adicionar o ? na frente do tipo da variavel valor no caso String
    3- adicionar um ?? "Valor Padrão"  String valor = estados['SP'] ?? "Padrão";
  */
  // String valor = estados['SP']!; // Leitura do mapa retorna nulo
  //
  // print("Estados: ${valor}");

  // runApp(MaterialApp(
  //   title: "Null Safety",
  //   home: Home()
  // ));

  // Variável não pode ser nula
  // String nome = '';
  // int idade = 10;
  // double altura = 1.10;

  // E se precisar de uma variável nula?
  // String? complemento;
  // int? numero;
  // double? preco;

  // operador (!) -> É um operador de associação de nulo
  // int resultado = numero!;
  // print("Resultado é: $resultado");


  //String resultado = nome!;
  // String resultado = nome ?? "";
  // print("total caracteres: ${resultado.length}");

  /*
    Como utilizar os operadores ? e !
  */

  // List<String> lista1 = ['Morango', 'Banana', 'Melão'];
  // List<String>? lista2;
  // List<String?> lista3 = ['Morango', null, 'Melão'];
  //
  // print("lista1: $lista1");
  // print("lista2: $lista2");
  // print("lista3: $lista3");

  // List<String?> lista3 = ['Morango', null, 'Melão'];
  // String valor = lista3.first!;
  // print("valor é: ${valor}");

  // Operador (?.) -> null operador consciente
  // List<String>? lista;
  // print("Total de itens: ${lista?.length}");

  // Random? random;
  // //random = Random();
  // print("Número aleatório: ${random?.nextInt(10)}");

//}







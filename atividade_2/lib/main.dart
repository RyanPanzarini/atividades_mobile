import 'dart:io';
import '../lib/models/livro.dart';
import '../lib/services/biblioteca.dart';

void main() {
  final biblioteca = Biblioteca();
  int opcao = 0;

  do {
    print("\n=== SISTEMA DE BIBLIOTECA ===");
    print("1 - Cadastrar livro");
    print("2 - Listar livros");
    print("3 - Atualizar livro");
    print("4 - Remover livro");
    print("5 - Sair");

    stdout.write("Escolha uma opção: ");
    opcao = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (opcao) {
      case 1:
        biblioteca.cadastrar();
        break;
      case 2:
        biblioteca.listar();
        break;
      case 3:
        biblioteca.atualizar();
        break;
      case 4:
        biblioteca.remover(b);
        break;
      case 5:
        print("Saindo...");
        break;
      default:
        print("Opção inválida!");
    }
  } while (opcao != 5);
}


import '../models/livro.dart';

class Biblioteca {
  final List<Livro> _livros = [];

  // cadastrar livro 
  void cadastrar(Livro livro) {
    if (_livros.any((l) => l.id == livro.id)) {
      print("Já existe um livro com esse ID!");
      return;
    }
    _livros.add(livro);
    print("Livro cadastrado com sucesso!");
  }

  // listar livros
  void listar() {
    if (_livros.isEmpty) {
      print("Nenhum livro cadastrado.");
      return;
    }

    for (var livro in _livros) {
      print(livro);
    }
  }

  // atualizar livro
  void atualizar(String id, String titulo, String autor, int ano) {
    for (var livro in _livros) {
      if (livro.id == id) {
        livro.titulo = titulo;
        livro.autor = autor;
        livro.ano = ano;
        print("Livro atualizado com sucesso!");
        return;
      }
    }
    print("Livro não encontrado.");
  }

  // deletar livro
  void remover(String id) {
    _livros.removeWhere((livro) => livro.id == id);
    print("Livro removido (se existia).");
  }
}

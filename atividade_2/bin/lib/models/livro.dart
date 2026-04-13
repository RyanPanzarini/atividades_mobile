
//Classe Livro
class Livro {
  String titulo;
  String autor;
  String id;
  int ano;

//Construtor
Livro({required this.titulo, required this.autor, required this.id, required this.ano});

//Sobrescrita para evitar erros
@override
String toString(){
  return "Titulo: $titulo\nAutor: $autor\nID: $id\nAno: $ano";
}
}

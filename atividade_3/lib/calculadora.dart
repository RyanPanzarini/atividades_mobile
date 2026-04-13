import 'package:flutter/material.dart';
import 'widgets/display_widget.dart';
import 'widgets/linha_botoes.dart';

class CalculadoraPage extends StatefulWidget {
  @override
  _CalculadoraPageState createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  String display = '';
  double n1 = 0;
  double n2 = 0;
  String op = '';

  void acao(String valor) {
    setState(() {
      if (valor == 'C') {
        display = '';
        n1 = 0;
        n2 = 0;
        op = '';
      } else if (['+', '-', '*', '/'].contains(valor)) {
        n1 = double.parse(display);
        op = valor;
        display = '';
      } else if (valor == '=') {
        n2 = double.parse(display);

        switch (op) {
          case '+':
            display = (n1 + n2).toString();
            break;
          case '-':
            display = (n1 - n2).toString();
            break;
          case '*':
            display = (n1 * n2).toString();
            break;
          case '/':
            display = (n1 / n2).toString();
            break;
        }
      } else {
        display += valor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora')),
      body: Column(
        children: [
}
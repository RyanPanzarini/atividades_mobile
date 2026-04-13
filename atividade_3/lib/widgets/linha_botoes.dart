import 'package:flutter/material.dart';
import 'botao.dart';

class LinhaBotoes extends StatelessWidget {
  final List<String> botoes;
  final Function(String) onClick;

  LinhaBotoes(this.botoes, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: botoes
          .map((texto) => BotaoWidget(texto: texto, onClick: onClick))
          .toList(),
    );
  }
}
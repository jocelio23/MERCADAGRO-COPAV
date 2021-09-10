import 'package:flutter/material.dart';

import '../tela_inicial_1.dart';
import '../tela_inicial_2.dart';

class ControladorTelas extends StatelessWidget {
  const ControladorTelas({Key? key,
   required this.index}) : super(key: key);

  final int? index;
  @override
  Widget build(BuildContext context) {
    var slideList = [TelaInicial1(),TelaInicial2()];
    return slideList[index!];
  }
}

import 'package:flutter/material.dart';
import 'package:mercadagrocopav/src/views/tela_escolha_4.dart';
import 'package:mercadagrocopav/src/views/tela_inicial_1.dart';
import 'package:mercadagrocopav/src/views/tela_inicial_2.dart';
import 'package:mercadagrocopav/src/views/tela_inicial_3.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: TelaEscolha4(),
    );
  }
}

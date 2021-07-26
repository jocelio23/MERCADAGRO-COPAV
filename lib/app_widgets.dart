import 'package:flutter/material.dart';
import 'package:mercadagrocopav/src/views/telainicial1/tela_inicial_1.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercadagro',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            TelaInicial1(),
          ],
        ),
      ),
    );
  }
}

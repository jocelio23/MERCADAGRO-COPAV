import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercadagrocopav/src/views/tela_escolha_4.dart';
import 'package:mercadagrocopav/src/views/tela_inicial_1.dart';
import 'package:mercadagrocopav/src/views/tela_inicial_2.dart';
import 'package:mercadagrocopav/src/views/tela_inicial_3.dart';
import 'package:mercadagrocopav/src/views/widgets/slide_points.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(initialPage: 0);
    return Scaffold(

      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        itemCount: 2,
        itemBuilder: (context,i){
          return ControladorTelas(index: i);
        },

      ),
    );
  }
}

import 'package:flutter/material.dart';

class TelaInicial1 extends StatefulWidget {
  const TelaInicial1({Key? key}) : super(key: key);

  @override
  _TelaInicial1State createState() => _TelaInicial1State();
}

class _TelaInicial1State extends State<TelaInicial1> {


  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      height: _height,
      width: _width,
      color: Colors.red,

      child: Column(

      ),
    );
  }
}

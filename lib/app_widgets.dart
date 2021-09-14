import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercadagrocopav/src/themes/app_cores.dart';
import 'package:mercadagrocopav/src/views/telaprincipal/tela_principal.dart';
import 'package:mercadagrocopav/src/views/telanovoprodutor/tela_novo_produtor.dart';
import 'package:mercadagrocopav/src/views/telaprincipal/widgets/controlador_telas.dart';
import 'dart:async';

import 'package:mercadagrocopav/src/views/telaprincipal/widgets/controle_deslizante.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {

  var _numTelas = ControladorTelas(index: 0,widgets: [TelaPrincipal(),TelaNovoProdutor()],);
  PageController _controller = PageController(initialPage: 0);
  int _pagAtual = 0;


  @override
  void initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if(_pagAtual < 1){
        _pagAtual++;
      }
      else{
        _pagAtual = 0;
      }

      _controller.animateToPage(_pagAtual, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }
  
  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  _onPageChanged(int index){
    setState(() {
      _pagAtual = index;
    });
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onPageChanged,
            controller: _controller.hasClients ? _controller : null,
            itemCount: _numTelas.widgets!.length,
            itemBuilder: (context,i){
              return _numTelas.widgets![i];
            },
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.28,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for(int i = 0; i < _numTelas.widgets!.length; i++ )
                      if(i == _pagAtual)
                        ControleDeslizante(ativado: true,
                        color: _pagAtual == 0 ? AppCores.green : AppCores.white,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        duration: Duration(milliseconds: 150),
                        borderColor: _pagAtual == 0 ? AppCores.green : AppCores.white,
                        borderRadius: BorderRadius.all(Radius.circular(12)),)
                      else
                        ControleDeslizante(ativado: false,
                          color: _pagAtual == 1 ? AppCores.white : AppCores.green,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          duration: Duration(milliseconds: 150),
                          borderColor: _pagAtual != 1 ? AppCores.green : AppCores.white,
                          borderRadius: BorderRadius.all(Radius.circular(12)),)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

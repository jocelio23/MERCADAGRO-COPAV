import 'package:flutter/material.dart';
import 'package:mercadagrocopav/app_widgets.dart';
import 'package:mercadagrocopav/routes_name.dart';
import 'package:mercadagrocopav/src/views/tela_inicial_1.dart';
import 'package:mercadagrocopav/src/views/tela_inicial_3.dart';

class Routes{

  // ignore: non_constant_identifier_names
  static Route<MaterialPageRoute> generateRoute(RouteSettings settings){
      switch(settings.name){

        case TELA_INICIAL_1_PRODUTOR:
          return RoutesAnimation(
              builder: (_) => AppWidget(), settings: settings);

        case TELA_ACESSO_PRODUTOR:
          return RoutesAnimation(
              builder: (_) => TelaInicial3(), settings: settings);

        default:
          return RoutesAnimation(builder: (_) => TelaInicial1(), settings: settings);

      }
  }

}

class RoutesAnimation<T> extends MaterialPageRoute<T> {
  RoutesAnimation({
    required WidgetBuilder builder,
    required RouteSettings settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}

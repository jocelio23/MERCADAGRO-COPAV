import 'package:flutter/material.dart';
import 'package:mercadagrocopav/app_widgets.dart';
import 'package:mercadagrocopav/routes_name.dart';
import 'package:mercadagrocopav/src/views/telaacessoprodutor/tela_acesso_produtor.dart';
import 'package:mercadagrocopav/src/views/telaprincipal/tela_principal.dart';

class Routes{

  // ignore: non_constant_identifier_names
  static Route<MaterialPageRoute> generateRoute(RouteSettings settings){
      switch(settings.name){

        case TELA_PRINCIPAL:
          return RoutesAnimation(
              builder: (_) => AppWidget(), settings: settings);

        case TELA_ACESSO_PRODUTOR:
          return RoutesAnimation(
              builder: (_) => TelaAcessoProdutor(), settings: settings);

        default:
          return RoutesAnimation(builder: (_) => TelaPrincipal(), settings: settings);

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


import 'package:flutter/material.dart';
import 'package:mercadagrocopav/routes_name.dart';

import 'app_routes.dart';

void main() {
  runApp(MaterialApp(
    title: "MercadAgro Copav",
    debugShowCheckedModeBanner: false,
    onGenerateRoute: Routes.generateRoute,
    initialRoute: TELA_INICIAL_1_PRODUTOR,
    //home: AppWidget(),
  ));
}



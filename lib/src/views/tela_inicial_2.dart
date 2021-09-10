import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercadagrocopav/src/themes/app_cores.dart';
import 'package:mercadagrocopav/src/themes/app_images.dart';

class TelaInicial2 extends StatelessWidget {
  const TelaInicial2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    final String _msgBoasVindas =
        "Olá, estamos muito felizes em saber que você será, "
        "um colaborador dessa rede AGRO! Agrocalize-se";

    double? _larguraButton = 307;

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.app_iamges_ti2_fundo_escuro),
            fit: BoxFit.cover,
          ),
        ),
        width: _width,
        height: _height,
        child: Stack(
          children: [
            Positioned(
                top: 50,
                left: _width * 0.1,
                child: Container(
                  width: _width * 0.8,
                  height: 153,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.app_images_ti2_logoTexto),
                        fit: BoxFit.contain,
                      ),
                  ),
                )),
            Center(
              child: Container(
                width: 325,
                height: 48,
                child: Text(
                  _msgBoasVindas,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppCores.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 70,
                left: (_width/2) - (_larguraButton/2) + 13,
                child: Container(
                  width: _width * 0.8,
                  height: 58,
                  child: SizedBox(
                    width: _larguraButton + (_width * 0.2),
                    height: 58,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sou novo por aqui"),
                      style: ElevatedButton.styleFrom(
                        primary: AppCores.yellow,
                        onPrimary: AppCores.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

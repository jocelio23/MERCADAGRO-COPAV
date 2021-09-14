import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercadagrocopav/routes_name.dart';
import 'package:mercadagrocopav/src/themes/app_cores.dart';
import 'package:mercadagrocopav/src/themes/app_images.dart';

class TelaAcessoProdutor extends StatelessWidget {
  const TelaAcessoProdutor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _heigth = MediaQuery.of(context).size.height;

    final String _textoApresentacao =
        "Somos mais de 2 mil pontos ativos em todo o\n"
        "Ceará";

    return Container(
      color: AppCores.white,
      alignment: Alignment.topCenter,
      width: _width,
      height: _heigth,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: _width,
              height: _heigth * 0.6,
              child: Image.asset(
                AppImages.app_images_logo_1,
                fit: BoxFit.fill,
              ),
            ),
            Container(
                alignment: Alignment.topCenter,
                width: _width,
                height: _heigth * 0.6,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 358,
                      height: 30,
                      child: Text(
                        _textoApresentacao,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppCores.gray),
                      ),
                    ),
                    Container(
                      child: Text(
                        "O MERCADO DO CAMPO LIVRE",
                        style: TextStyle(color: AppCores.purple_edit),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 307,
                      height: 132,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: _width * 0.85,
                            height: 56,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Quero ter acesso",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),),
                              style: ElevatedButton.styleFrom(
                                  primary: AppCores.yellow,
                                  onPrimary: AppCores.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              )),
                            ),
                          ),
                          SizedBox(
                            width: _width * 0.85,
                            height: 56,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, TELA_ESCOLHA_PRODUTOR);
                              },
                              child: Text("Quero criar uma conta",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),),
                              style: ElevatedButton.styleFrom(
                                  primary: AppCores.white,
                                  onPrimary: AppCores.purple_edit,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(width: 1,color: AppCores.purple_edit),
                                  )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

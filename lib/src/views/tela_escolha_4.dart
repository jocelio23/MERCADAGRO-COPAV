import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercadagrocopav/src/themes/app_cores.dart';
import 'package:mercadagrocopav/src/themes/app_images.dart';

class TelaEscolha4 extends StatefulWidget {
  const TelaEscolha4({Key? key}) : super(key: key);

  @override
  _TelaEscolha4State createState() => _TelaEscolha4State();
}

class _TelaEscolha4State extends State<TelaEscolha4> {
  @override

  final String _produtor = "Quero ser produtor";
  final String _quero_comprar = "Quero comprar";

  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        width: _width,
        alignment: Alignment.topCenter,
        color: AppCores.white,
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(
                AppImages.app_images_logo_1,
              ),
            ),
            Container(
              width: _width * 0.85,
              height: (_height - (_height * 0.6)),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 55)),
                  SizedBox(
                    width: _width * 0.85,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Clicou");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "${_produtor}",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Container(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_right_alt))
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          onPrimary: AppCores.black,
                          padding: EdgeInsets.only(
                              top: 15, left: 30, right: 30, bottom: 15),
                          primary: AppCores.yellow,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 1, color: AppCores.black))),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                  ElevatedButton(
                    onPressed: () {
                      print("Clicou");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "${_quero_comprar}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Icon(Icons.shopping_cart),
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        onPrimary: AppCores.purple_edit,
                        primary: AppCores.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(width: 1, color: AppCores.purple_edit),
                        ),
                        padding: EdgeInsets.only(
                            top: 15, left: 51, right: 51, bottom: 15)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

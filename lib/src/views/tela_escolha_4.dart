import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercadagrocopav/src/themes/app_cores.dart';
import 'package:mercadagrocopav/src/themes/app_images.dart';
import 'package:auto_size_text/auto_size_text.dart';


class TelaEscolha4 extends StatefulWidget {
  const TelaEscolha4({Key? key}) : super(key: key);

  @override
  _TelaEscolha4State createState() => _TelaEscolha4State();
}

class _TelaEscolha4State extends State<TelaEscolha4> {
  @override
  final String produtor = "Quero ser produtor";
  final String quero_comprar = "Quero comprar";

  Widget build(BuildContext context) {
    return Container(
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
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 34, right: 44, top: 20),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("Clicou");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            "${produtor}",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                            maxLines: 1,
                            maxFontSize: 20,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_right_alt)))
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
                Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                ElevatedButton(
                  onPressed: () {
                    print("Clicou");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            "${quero_comprar}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                            maxLines: 1,
                            maxFontSize: 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.shopping_cart),
                        ),
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
                Container(
                  height: 146,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

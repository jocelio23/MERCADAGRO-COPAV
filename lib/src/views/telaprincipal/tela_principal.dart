import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercadagrocopav/src/themes/app_cores.dart';
import 'package:mercadagrocopav/src/themes/app_images.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _heigth = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    var altura = _heigth * 0.05;
    return Scaffold(
      backgroundColor: AppCores.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 70 + altura)),
                Container(
                  width: 272,
                  height: 210,
                  padding: EdgeInsets.only(left: 25, right: 25),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      AppImages.app_image_componente_42,
                    ),
                    fit: BoxFit.cover,
                  )),
                ),
                Padding(padding: EdgeInsets.only(top: 61)),
                Text(
                  "MercadAgro",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "O mercado do Campo Livre",
                  style: TextStyle(fontSize: 20, color: AppCores.purple_edit),
                ),
                Padding(padding: EdgeInsets.only(top: 38)),
                Container(
                  width: _width,
                  height: 159,
                  decoration: BoxDecoration(
                      color: AppCores.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(10),
                          leading: Image.asset(
                            AppImages.app_image_sars_cov_2,
                            fit: BoxFit.contain,
                          ),
                          title: Container(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              "COVID-19 ESTÁ ATIVO",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          subtitle: Container(
                            padding: EdgeInsets.only(top: 9,left: 7),
                            width: 182,
                            height: 43,
                            child: Text("O mercadAgro pede que você se\n"
                                "previna ao sair. Use Máscara",maxLines: 2,
                            style: TextStyle(
                              fontSize: 14,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 80,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

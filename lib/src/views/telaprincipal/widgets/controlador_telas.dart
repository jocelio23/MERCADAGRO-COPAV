import 'package:flutter/material.dart';


class ControladorTelas extends StatelessWidget {
  const ControladorTelas({Key? key,
   required this.index,
    required this.widgets,
  }) : super(key: key);

  final int? index;
  final List<Widget>? widgets;
  @override
  Widget build(BuildContext context) {
    return widgets != null ? this.widgets![index!] : Container();
  }
}

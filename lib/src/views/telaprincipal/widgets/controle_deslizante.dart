import 'package:flutter/material.dart';
import 'package:mercadagrocopav/src/themes/app_cores.dart';

class ControleDeslizante extends StatelessWidget {

  final bool? ativado;
  final Color? color;
  final Duration? duration;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final Color? borderColor;

  const ControleDeslizante({Key? key,
    required this.ativado,
    this.color,
    this.duration,
    this.margin,
    this.borderRadius,
    this.borderColor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration!,
      margin: margin,
      height: ativado! ? 12 : 8,
      width: ativado! ? 12 : 8,
      decoration: BoxDecoration(
        color: ativado! ? color : AppCores.white,
        borderRadius: borderRadius,
        border: Border.all(width: 1,
            color: borderColor! )
      )
    );
  }
}

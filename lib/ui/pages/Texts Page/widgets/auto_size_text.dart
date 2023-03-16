import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSizeTextApp extends StatelessWidget {
  const AutoSizeTextApp({super.key, required this.title, this.textStyle, this.textAlign, this.minFontSize, this.maxLines, this.fontSize});
  final String title;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final double? minFontSize;
  final int? maxLines;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      style: textStyle ?? const TextStyle(color: Colors.black87, fontSize: 16),
      softWrap: true,
      maxLines: maxLines ?? 3,
      textAlign: textAlign ?? TextAlign.center,
      minFontSize: minFontSize ?? 10,
      presetFontSizes: [textStyle == null ? 12 : textStyle!.fontSize ?? 16, 14, 16, 18],
      stepGranularity: minFontSize ?? 10,
      overflow: TextOverflow.ellipsis,
    );
  }
}

const codeStringAutosize = '''

class AutoSizeTextApp extends StatelessWidget {
  const AutoSizeTextApp({super.key, required this.title, this.textStyle, this.textAlign, this.minFontSize, this.maxLines, this.fontSize});
  final String title;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final double? minFontSize;
  final int? maxLines;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      style: textStyle ?? const TextStyle(color: Colors.black87, fontSize: 16),
      softWrap: true, //Nos ayuda a que el texto sepa cuando es el fin del espacio y salte de linea.
      maxLines: maxLines ?? 3, //Cuantas lineas se permirten de nuestro codigo.
      textAlign: textAlign ?? TextAlign.center,
      minFontSize: minFontSize ?? 10, //Tamaño de fuente minima que puede llegar el texto NOta: La max es la que se pasa en el TextStyle y no puede ser inferior a ésta. 
      stepGranularity: minFontSize ?? 10, //Este nos ayud aa adaptar la fuente al espacio disponible que se tenga.
      presetFontSizes: [textStyle == null ? 12 : textStyle!.fontSize ?? 16, 14, 16, 18],
      overflow: TextOverflow.ellipsis,
    );
  }
}

''';

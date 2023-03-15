import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_generys/ui/pages/Texts%20Page/widgets/auto_size_text.dart';

class TextWidgetBodyDetail extends StatelessWidget {
  const TextWidgetBodyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .3,
      width: Get.width * .8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AutoSizeTextApp(
            title: 'Esto es una ejemplo de un texto en una linea dentro de un espacio reducido',
            maxLines: 1,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class TextWidgetBodyDetail02 extends StatelessWidget {
  const TextWidgetBodyDetail02({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .3,
      width: Get.width * .8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AutoSizeTextApp(
            title: 'Esto es una ejemplo de un texto en dos lineas dentro de un espacio reducido, como ves está en dos lineas y de aqui no pasa',
            maxLines: 2,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

const textWidgetBodyDetailString = '''
  
  //NOTA: ---
  //La parte del codigo de Get.height y Get.width
  //Se puede reemplazar por el MediaQuery.of(context).size.height o width
  //NOTA ---

class TextWidgetBodyDetail extends StatelessWidget {
  const TextWidgetBodyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .3,
      width: Get.width * .8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AutoSizeTextApp(
            title: 'Esto es una ejemplo de un texto en una linea dentro de un espacio reducido',
            maxLines: 1,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
''';

const textWidgetBodyDetail02String = '''

  //NOTA: ---
  //La parte del codigo de Get.height y Get.width
  //Se puede reemplazar por el MediaQuery.of(context).size.height o width
  //NOTA ---


class TextWidgetBodyDetail02 extends StatelessWidget {
  const TextWidgetBodyDetail02({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .3,
      width: Get.width * .8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AutoSizeTextApp(
            title: 'Esto es una ejemplo de un texto en dos lineas dentro de un espacio reducido, como ves está en dos lineas y de aqui no pasa',
            maxLines: 2,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

''';

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
      softWrap: true,
      maxLines: maxLines ?? 3,
      textAlign: textAlign ?? TextAlign.center,
      minFontSize: minFontSize ?? 10,
      stepGranularity: minFontSize ?? 10,
      overflow: TextOverflow.ellipsis,
    );
  }
}

''';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:get/get.dart';
import 'package:widgets_generys/ui/theme/colors_app.dart';

import '../theme/text_styles.dart';
import '../utils/texts_app.dart';
import 'Dialog Page/Widgets/snackbar_info.dart';
import 'Texts Page/widgets/auto_size_text.dart';

class DetailSourseCode extends StatelessWidget {
  const DetailSourseCode({super.key, required this.titleSourseCode, required this.codeString});
  final String titleSourseCode;
  final String codeString;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeTextApp(
          title: titleDetailSourseCode + titleSourseCode,
          textStyle: textStyleTitlesWhite,
          maxLines: 2,
        ),
      ),
      body: LayoutBuilder(
        builder: (context, c) {
          return SizedBox(
            height: Get.height,
            width: Get.width,
            // decoration: BoxDecoration(color: const Color(0xFF111820), borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                SyntaxView(
                  code: codeString,
                  syntax: Syntax.DART,
                  syntaxTheme: SyntaxTheme.dracula(),
                  withZoom: true,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () async {
                      await Clipboard.setData(ClipboardData(text: codeString));
                      snackBarInfo();
                    },
                    splashRadius: 20,
                    icon: const Icon(
                      Icons.copy_rounded,
                      color: colorWhiteApp,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

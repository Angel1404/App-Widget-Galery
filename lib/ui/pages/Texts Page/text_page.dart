import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global_widgets/dialog_genery_detail.dart';
import '../../theme/text_styles.dart';
import '../../utils/shapes_bottons.dart';
import '../../utils/texts_app.dart';
import 'widgets/auto_size_text.dart';
import 'widgets/text_widget_detail.dart';

class TextsPage extends StatelessWidget {
  const TextsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AutoSizeTextApp(
          title: titleTextPage,
          textStyle: textStyleTitlesWhite,
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        margin: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                showdialogGeneryDetail(
                  context,
                  widget: const TextWidgetBodyDetail(),
                  codeEjem: codeStringAutosize + textWidgetBodyDetailString,
                  titleEjemplo: titleText01Line,
                );
              },
              style: ElevatedButton.styleFrom(shape: shapeSheetStyleBotton),
              child: const AutoSizeTextApp(maxLines: 1, title: titleText01Line, textStyle: textStyleTitlesWhite),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showdialogGeneryDetail(
                  context,
                  widget: const TextWidgetBodyDetail02(),
                  titleEjemplo: titleText02Line,
                  codeEjem: codeStringAutosize + textWidgetBodyDetail02String,
                );
              },
              style: ElevatedButton.styleFrom(shape: shapeSheetStyleBotton),
              child: const AutoSizeTextApp(maxLines: 1, title: titleText02Line, textStyle: textStyleTitlesWhite),
            ),
          ],
        ),
      ),
    );
  }
}

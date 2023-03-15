import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_generys/ui/pages/Texts%20Page/widgets/auto_size_text.dart';
import 'package:widgets_generys/ui/utils/shapes_bottons.dart';

import '../../theme/text_styles.dart';
import '../../utils/texts_app.dart';
import 'Widgets/dialog_clip_none.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AutoSizeTextApp(
          title: showDialogText,
          textStyle: textStyleTitlesWhite,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 16),
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showdialogClipNone(context);
              },
              style: ElevatedButton.styleFrom(shape: shapeSheetStyleBotton),
              child: const AutoSizeTextApp(title: showdialogClipNoneText, textStyle: textStyleTitlesWhite),
            ),
          ],
        ),
      ),
    );
  }
}

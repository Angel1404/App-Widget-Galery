import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_generys/routes/app_pages.dart';

import '../pages/Texts Page/widgets/auto_size_text.dart';
import '../theme/colors_app.dart';
import '../theme/text_styles.dart';
import '../utils/shapes_bottons.dart';

showdialogGeneryDetail(BuildContext context, {required Widget widget, String titleEjemplo = '', required String codeEjem}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        shape: shapeSheetStyleBotton,
        children: [
          widget,
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Get.back();
                Get.toNamed(Routes.DETAILSOURSECODE, arguments: {'title': titleEjemplo, 'codeString': codeEjem});
              },
              style: ElevatedButton.styleFrom(shape: shapeSheetStyleBotton, backgroundColor: colorBlueA3),
              child: AutoSizeTextApp(title: 'Ver código fuente', textStyle: textStyleTitlesWhite.copyWith(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 16),
        ],
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_generys/routes/app_pages.dart';
import 'package:widgets_generys/ui/pages/Texts%20Page/widgets/auto_size_text.dart';
import 'package:widgets_generys/ui/theme/colors_app.dart';
import 'package:widgets_generys/ui/theme/text_styles.dart';
import 'package:widgets_generys/ui/utils/shapes_bottons.dart';
import 'package:widgets_generys/ui/utils/texts_app.dart';

showdialogClipNone(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        shape: shapeSheetStyleBotton,
        children: [
          SizedBox(
            height: Get.height * .13,
            width: Get.width * .8,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: (-Get.height * .12).roundToDouble(),
                  left: Get.width * .295 / 2,
                  child: SizedBox(
                    width: Get.width * .5,
                    height: 200, //TODO: Valor fijo, si se modifica, deberá modificarse la propiedad top del Positioned padre.
                    child: const Icon(Icons.person_pin_outlined, color: Colors.red, size: 200),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Mi diálogo con una imagen que sale wfsdfsdfdsfdsfdsfdsf',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Mi diálogo con una imagen que sale',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Mi diálogo con una imagen que sale',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Mi diálogo con una imagen que sale',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Mi diálogo con una imagen que sale',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                      Get.toNamed(Routes.DETAILSOURSECODE, arguments: {'title': showdialogClipNoneText, 'codeString': codeStringShowDialogClipNone});
                    },
                    style: ElevatedButton.styleFrom(shape: shapeSheetStyleBotton, backgroundColor: colorBlueA3),
                    child: AutoSizeTextApp(title: 'Ver código fuente', textStyle: textStyleTitlesWhite.copyWith(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          )
        ],
      );
    },
  );
}

const codeStringShowDialogClipNone = '''

  //NOTA: ---
  //La parte del codigo de Get.height y Get.width
  //Se puede reemplazar por el MediaQuery.of(context).size.height o width
  //NOTA ---

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        shape: shapeSheetStyleBotton,
        children: [
          SizedBox(
            height: Get.height * .13,
            width: Get.width * .8,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: (-Get.height * .12).roundToDouble(),
                  left: Get.width * .295 / 2,
                  child: SizedBox(
                    width: Get.width * .5,
                    height: 200, //TODO: Valor fijo, si se modifica, deberá modificarse la propiedad top del Positioned padre.
                    child: const Icon(Icons.person_pin_outlined, color: Colors.red, size: 200),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Mi diálogo con una imagen que sale wfsdfsdfdsfdsfdsfdsf',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Mi diálogo con una imagen que sale',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Mi diálogo con una imagen que sale',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Mi diálogo con una imagen que sale',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Mi diálogo con una imagen que sale',
                  style: TextStyle(color: Colors.black),
                ),

                const SizedBox(height: 16),
              ],
            ),
          )
        ],
      );
    },
  );

''';

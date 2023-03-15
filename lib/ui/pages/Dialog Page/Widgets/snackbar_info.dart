//Snack informativo para eventos finalizados en la app
//Snack information for events finished in the app
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_generys/ui/theme/colors_app.dart';

void snackBarInfo(
    {String bodyMessage = 'Código Fuente', String messageTitle = 'Copiado en porta papeles', Color? backgroundColor, bool topSnack = false}) {
  Get.snackbar(
    bodyMessage,
    messageTitle,
    backgroundColor: backgroundColor ?? colorBlueA2,
    barBlur: 20,
    duration: const Duration(seconds: 3),
    colorText: colorWhiteApp,
    margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
    snackPosition: topSnack ? null : SnackPosition.BOTTOM,
  );
}

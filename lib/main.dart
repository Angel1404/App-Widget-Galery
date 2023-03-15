import './routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/theme/theme_app.dart';
import 'ui/utils/texts_app.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      theme: themadataApp,
      defaultTransition: Transition.fade,
      title: titleApp,
      // initialBinding: SplashBinding(),
      getPages: AppPages.pages,
      // home: SplashPage(),
    ),
  );
}

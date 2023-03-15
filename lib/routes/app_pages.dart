import 'package:get/get.dart';
import 'package:widgets_generys/ui/pages/details_sourse_code.dart';

import '../z_routes_pages.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.DIALOGPAGE,
      page: () => const DialogPage(),
    ),
    GetPage(
      name: Routes.TEXTSPAGE,
      page: () => const TextsPage(),
    ),
    GetPage(
      name: Routes.INPUTSPAGE,
      page: () => const InputsPage(),
    ),
    GetPage(
      name: Routes.DETAILSOURSECODE,
      page: () => DetailSourseCode(
        titleSourseCode: Get.arguments['title'],
        codeString: Get.arguments['codeString'],
      ),
    ),
  ];
}

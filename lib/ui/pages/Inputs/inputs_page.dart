import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/text_styles.dart';
import '../../utils/texts_app.dart';
import '../Texts Page/widgets/auto_size_text.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AutoSizeTextApp(
          title: titleInpustPage,
          textStyle: textStyleTitlesWhite,
        ),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: ListView(
          children: const [],
        ),
      ),
    );
  }
}

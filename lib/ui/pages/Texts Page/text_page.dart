import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/text_styles.dart';
import '../../utils/texts_app.dart';
import 'widgets/auto_size_text.dart';

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
        margin: const EdgeInsets.only(top: 16),
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_generys/data/models/model_home_card.dart';
import 'package:widgets_generys/ui/pages/Texts%20Page/widgets/auto_size_text.dart';
import 'package:widgets_generys/ui/theme/text_styles.dart';

import '../../utils/texts_app.dart';
import 'Widgets/cards_home.dart';
import 'Widgets/drawe_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerHome(),
      appBar: AppBar(
        title: const AutoSizeTextApp(
          title: titleApp,
          textStyle: textStyleTitlesWhite,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 16),
        height: Get.height,
        width: Get.width,
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          alignment: WrapAlignment.center,
          children: List.generate(
            listCardHome.length,
            (i) {
              final dataCard = listCardHome[i];
              return CardHome(dataCard: dataCard, index: i);
            },
          ),
        ),
      ),
    );
  }
}

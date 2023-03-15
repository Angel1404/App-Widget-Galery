import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_generys/ui/pages/Texts%20Page/widgets/auto_size_text.dart';
import 'package:widgets_generys/ui/theme/colors_app.dart';
import 'package:widgets_generys/ui/theme/text_styles.dart';

import '../../../../data/models/model_home_card.dart';

class CardHome extends StatelessWidget {
  const CardHome({
    Key? key,
    required this.dataCard,
    required this.index,
  }) : super(key: key);
  final ModelCardHome dataCard;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: () => Get.toNamed(dataCard.route),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: index % 3 == 0 ? Get.height * .23 : Get.height * .20,
        width: Get.width * .4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorPurpuraA1,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 1),
              color: Colors.white24,
              blurRadius: 8,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              dataCard.icon,
              size: 40,
            ),
            AutoSizeTextApp(
              title: dataCard.title,
              textStyle: normalStyleText20,
              maxLines: 2,
            ),
            const Icon(
              Icons.arrow_circle_right_outlined,
              color: colorYellowA1,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_generys/data/models/model_boton_pages.dart';
import 'package:widgets_generys/ui/global_widgets/dialog_genery_detail.dart';
import 'package:widgets_generys/ui/pages/Inputs/Widgets/custom_imput.dart';
import 'package:widgets_generys/ui/theme/colors_app.dart';

import '../../theme/text_styles.dart';
import '../../utils/shapes_bottons.dart';
import '../../utils/texts_app.dart';
import '../Texts Page/widgets/auto_size_text.dart';
import 'Widgets/genery_input.dart';
import 'Widgets/input_password.dart';

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
      body: Container(
        margin: const EdgeInsets.all(16),
        height: Get.height,
        width: Get.width,
        child: ListView.separated(
          itemBuilder: (context, index) {
            final model = listModelBotonsPageInputs[index];
            return GeneryBoton(model: model);
          },
          separatorBuilder: (context, index) => const Divider(color: colorPurpuraA1, endIndent: 20, indent: 10),
          itemCount: listModelBotonsPageInputs.length,
        ),
      ),
    );
  }
}

// ElevatedButton(
//   onPressed: () {
//     showdialogGeneryDetail(
//       context,
//       widget: const CustomInputPage(),
//       titleEjemplo: titleInputCustom,
//       codeEjem: textFormFieldCustomString + customInputPageString,
//     );
//   },
//   style: ElevatedButton.styleFrom(shape: shapeSheetStyleBotton),
//   child: const AutoSizeTextApp(title: titleInputCustom, textStyle: textStyleTitlesWhite, maxLines: 1),
// ),

class GeneryBoton extends StatelessWidget {
  const GeneryBoton({
    Key? key,
    required this.model,
  }) : super(key: key);
  final ModelBotonsPages model;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showdialogGeneryDetail(
          context,
          widget: model.page,
          titleEjemplo: model.title,
          codeEjem: model.codeStringGenery + model.codeStringDesmostration,
        );
      },
      style: ElevatedButton.styleFrom(shape: shapeSheetStyleBotton),
      child: AutoSizeTextApp(title: model.title, textStyle: textStyleTitlesWhite, maxLines: 1),
    );
  }
}

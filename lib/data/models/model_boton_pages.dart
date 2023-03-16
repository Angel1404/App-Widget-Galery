import 'package:flutter/cupertino.dart';
import 'package:widgets_generys/ui/pages/Inputs/Widgets/genery_input.dart';
import 'package:widgets_generys/ui/pages/Inputs/Widgets/input_password.dart';
import 'package:widgets_generys/ui/utils/texts_app.dart';

class ModelBotonsPages {
  final String title;
  final String codeStringDesmostration;
  final String codeStringGenery;
  final Widget page;

  ModelBotonsPages({required this.title, required this.codeStringDesmostration, required this.codeStringGenery, required this.page});
}

final listModelBotonsPageInputs = [
  ModelBotonsPages(
    codeStringDesmostration: inputPasswordRedondeadoString,
    codeStringGenery: inputGeneryString,
    page: const InputPasswordRedondeado(),
    title: titleInputBottonPasswordRedondeado,
  ),
  ModelBotonsPages(
    codeStringDesmostration: inputPasswordSemiRedondeadoString,
    codeStringGenery: inputGeneryString,
    page: const InputPasswordSemiRedondeado(),
    title: titleInputBottonPasswordSemiRedondeado,
  ),
];

import 'package:flutter/material.dart';
import 'package:widgets_generys/routes/app_pages.dart';

class ModelCardHome {
  final String title;
  final IconData icon;
  final String route;

  ModelCardHome({required this.title, required this.icon, required this.route});
}

final listCardHome = [
  ModelCardHome(title: 'Shows Dialogs', icon: Icons.window_rounded, route: Routes.DIALOGPAGE),
  ModelCardHome(title: 'Auto Texts', icon: Icons.text_fields_rounded, route: Routes.TEXTSPAGE),
  ModelCardHome(title: 'Shows Dialogs', icon: Icons.window_rounded, route: Routes.DIALOGPAGE),
  ModelCardHome(title: 'Shows Dialogs', icon: Icons.window_rounded, route: Routes.DIALOGPAGE),
];

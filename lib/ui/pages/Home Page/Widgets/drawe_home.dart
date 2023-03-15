import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Texts Page/widgets/auto_size_text.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
        child: SizedBox(
          height: Get.height * .2,
          child: Column(
            children: const [
              AutoSizeTextApp(
                  maxLines: 10,
                  title:
                      'Aquí va todo lo referente a info del equipo de desarrollo, un apartado de sugerencias, quejas, fallas, calificación de la app, version de la app, donaciones :v y app'),
            ],
          ),
        ),
      ),
    );
  }
}

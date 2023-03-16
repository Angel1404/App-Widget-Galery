import 'package:flutter/material.dart';

import 'genery_input.dart';

class InputPasswordRedondeado extends StatefulWidget {
  const InputPasswordRedondeado({super.key});

  @override
  State<InputPasswordRedondeado> createState() => _InputPasswordRedondeadoState();
}

class _InputPasswordRedondeadoState extends State<InputPasswordRedondeado> {
  bool isEnablePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: InputGenery(
        hintText: 'Contraseña',
        obscureText: isEnablePassword,
        isSufixIcon: true,
        suixIcon: _iconOscureText(),
        prefixIcon: Icons.lock_outline,
        onChanged: (value) {
          //Aqui obtienen lo que se escriba en el input :)
        },
      ),
    );
  }

  Widget _iconOscureText() {
    return IconButton(
      splashRadius: 20,
      splashColor: Colors.blueAccent.withOpacity(.5),
      tooltip: 'Opción para mirar la contraseña',
      icon: Icon(
        !isEnablePassword ? Icons.visibility : Icons.visibility_off,
      ),
      onPressed: () {
        isEnablePassword = !isEnablePassword;
        setState(() {});
      },
    );
  }
}

class InputPasswordSemiRedondeado extends StatefulWidget {
  const InputPasswordSemiRedondeado({super.key});

  @override
  State<InputPasswordSemiRedondeado> createState() => _InputPasswordSemiRedondeadoState();
}

class _InputPasswordSemiRedondeadoState extends State<InputPasswordSemiRedondeado> {
  bool isEnablePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: InputGenery(
        hintText: 'Contraseña',
        obscureText: isEnablePassword,
        isSufixIcon: true,
        suixIcon: _iconOscureText(),
        prefixIcon: Icons.lock_outline,
        borderRadius: 10,
        onChanged: (value) {
          //Aqui obtienen lo que se escriba en el input :)
        },
      ),
    );
  }

  Widget _iconOscureText() {
    return IconButton(
      splashRadius: 20,
      splashColor: Colors.blueAccent.withOpacity(.5),
      tooltip: 'Opción para mirar la contraseña',
      icon: Icon(
        !isEnablePassword ? Icons.visibility : Icons.visibility_off,
      ),
      onPressed: () {
        isEnablePassword = !isEnablePassword;
        setState(() {});
      },
    );
  }
}

const inputPasswordRedondeadoString = '''

//Implementación


class InputPasswordRedondeado extends StatefulWidget {
  const InputPasswordRedondeado({super.key});

  @override
  State<InputPasswordRedondeado> createState() => _InputPasswordRedondeadoState();
}

class _InputPasswordRedondeadoState extends State<InputPasswordRedondeado> {
  bool isEnablePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: InputGenery(
        hintText: 'Contraseña',
        obscureText: isEnablePassword,
        isSufixIcon: true,
        suixIcon: _iconOscureText(),
        prefixIcon: Icons.lock_outline,
        onChanged: (value) {
          //Aqui obtienen lo que se escriba en el input :)
        },
      ),
    );
  }

  Widget _iconOscureText() {
    return IconButton(
      splashRadius: 20,
      splashColor: Colors.blueAccent.withOpacity(.5),
      tooltip: 'Opción para mirar la contraseña',
      icon: Icon(
        !isEnablePassword ? Icons.visibility : Icons.visibility_off,
      ),
      onPressed: () {
        isEnablePassword = !isEnablePassword;
        setState(() {});
      },
    );
  }
}
''';

const inputPasswordSemiRedondeadoString = '''

//Implementación


class InputPasswordSemiRedondeado extends StatefulWidget {
  const InputPasswordSemiRedondeado({super.key});

  @override
  State<InputPasswordSemiRedondeado> createState() => _InputPasswordSemiRedondeadoState();
}

class _InputPasswordSemiRedondeadoState extends State<InputPasswordSemiRedondeado> {
  bool isEnablePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: InputGenery(
        hintText: 'Contraseña',
        obscureText: isEnablePassword,
        isSufixIcon: true,
        suixIcon: _iconOscureText(),
        prefixIcon: Icons.lock_outline,
        borderRadius: 10,
        onChanged: (value) {
          //Aqui obtienen lo que se escriba en el input :)
        },
      ),
    );
  }

  Widget _iconOscureText() {
    return IconButton(
      splashRadius: 20,
      splashColor: Colors.blueAccent.withOpacity(.5),
      tooltip: 'Opción para mirar la contraseña',
      icon: Icon(
        !isEnablePassword ? Icons.visibility : Icons.visibility_off,
      ),
      onPressed: () {
        isEnablePassword = !isEnablePassword;
        setState(() {});
      },
    );
  }
}
''';

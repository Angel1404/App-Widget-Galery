import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputLargeage extends StatelessWidget {
  const InputLargeage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: Get.width * .8, //Ya saben úeden cambiarlo con el mediaQuery
      child: InputGeneryAmplio(
        hintText: 'Input Largoooo',
      ),
    );
  }
}

class InputGeneryAmplio extends StatelessWidget {
  InputGeneryAmplio({super.key, this.obscureText, this.textInputType, this.prefixIcon, this.onChanged, this.hintText});

  final bool? obscureText;
  final TextInputType? textInputType;
  final IconData? prefixIcon;
  final Function(String)? onChanged;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TextFormField(
        style: styleInputsText,
        keyboardType: textInputType ?? TextInputType.emailAddress,
        obscureText: obscureText ?? false,
        maxLines: 15,
        minLines: 10,
        onChanged: onChanged,
        cursorColor: Colors.blueAccent,
        decoration: InputDecoration(
          hintText: hintText ?? 'Correo',
          hintStyle: bodyTextGreyLight,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: InputBorder.none,
          label: Text(hintText!, style: bodyTextGreyLight),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.black26,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }

  final styleInputsText = const TextStyle(
    color: Colors.black87,
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
  final bodyTextGreyLight = TextStyle(
    color: Colors.grey.withOpacity(.7),
    fontSize: 17.0,
    fontWeight: FontWeight.normal,
  );
}

const inputGeneryAmplioString = '''

class InputGeneryAmplio extends StatelessWidget {
  InputGeneryAmplio({super.key, this.obscureText, this.textInputType, this.prefixIcon, this.onChanged, this.hintText});

  final bool? obscureText;
  final TextInputType? textInputType;
  final IconData? prefixIcon;
  final Function(String)? onChanged;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TextFormField(
        style: styleInputsText,
        keyboardType: textInputType ?? TextInputType.emailAddress,
        obscureText: obscureText ?? false,
        maxLines: 15,
        minLines: 10,
        onChanged: onChanged,
        cursorColor: Colors.blueAccent,
        decoration: InputDecoration(
          hintText: hintText ?? 'Correo',
          hintStyle: bodyTextGreyLight,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: InputBorder.none,
          label: Text(hintText!, style: bodyTextGreyLight),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.black26,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }

  final styleInputsText = const TextStyle(
    color: Colors.black87,
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
  final bodyTextGreyLight = TextStyle(
    color: Colors.grey.withOpacity(.7),
    fontSize: 17.0,
    fontWeight: FontWeight.normal,
  );
}

''';

const inputLargeageString = '''''';

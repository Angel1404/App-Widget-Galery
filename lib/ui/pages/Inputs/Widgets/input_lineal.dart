import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputLinealPage extends StatelessWidget {
  const InputLinealPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: Get.width * .8, //Ya saben úeden cambiarlo con el mediaQuery
      child: InputGeneryLinear(
        hintText: 'Input Lineaallll',
      ),
    );
  }
}

class InputGeneryLinear extends StatelessWidget {
  InputGeneryLinear({super.key, this.obscureText, this.textInputType, this.onChanged, this.hintText});

  final bool? obscureText;
  final TextInputType? textInputType;
  final Function(String)? onChanged;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Text('Nombre de la tienda', style: bodyTextGreyLight),
          Flexible(
            child: TextFormField(
              style: styleInputsText,
              keyboardType: textInputType ?? TextInputType.text,
              obscureText: obscureText ?? false,
              maxLines: 3,
              minLines: 1,
              onChanged: onChanged,
              cursorColor: Colors.blueAccent,
              decoration: InputDecoration(
                label: Text(hintText!, style: bodyTextGreyLight),
                hintText: hintText,
                hintStyle: bodyTextGreyLight,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width: 1),
                ),
              ),
            ),
          ),
        ],
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

const inputGeneryLinearString = '''
class InputGeneryLinear extends StatelessWidget {
  InputGeneryLinear({super.key, this.obscureText, this.textInputType, this.onChanged, this.hintText});

  final bool? obscureText;
  final TextInputType? textInputType;
  final Function(String)? onChanged;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Text('Nombre de la tienda', style: bodyTextGreyLight),
          Flexible(
            child: TextFormField(
              style: styleInputsText,
              keyboardType: textInputType ?? TextInputType.text,
              obscureText: obscureText ?? false,
              maxLines: 3,
              minLines: 1,
              onChanged: onChanged,
              cursorColor: Colors.blueAccent,
              decoration: InputDecoration(
                label: Text(hintText!, style: bodyTextGreyLight),
                hintText: hintText,
                hintStyle: bodyTextGreyLight,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width: 1),
                ),
              ),
            ),
          ),
        ],
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

const inputLinealPageString = '''

''';

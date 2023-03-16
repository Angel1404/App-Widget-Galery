import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputGenery extends StatelessWidget {
  const InputGenery(
      {super.key,
      this.obscureText,
      this.textInputType,
      this.prefixIcon,
      this.onChanged,
      this.hintText,
      this.isPrefixIcon = true,
      this.suixIcon,
      this.isSufixIcon = false,
      this.borderRadius,
      this.onTap});

  final bool? obscureText;
  final TextInputType? textInputType;
  final IconData? prefixIcon;
  final Widget? suixIcon;
  final Function(String)? onChanged;
  final String? hintText;
  final bool isPrefixIcon;
  final bool isSufixIcon;
  final Function()? onTap;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: Get.width * .8,
      child: TextFormField(
        style: styleInputsText,
        keyboardType: textInputType ?? TextInputType.emailAddress,
        obscureText: obscureText ?? false,
        onTap: onTap,
        onChanged: onChanged,
        cursorColor: Colors.blueAccent[700],
        decoration: InputDecoration(
          hintText: hintText ?? 'Correo',
          hintStyle: Theme.of(context).textTheme.labelSmall,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          prefixIcon: !isPrefixIcon ? null : Icon(prefixIcon ?? Icons.email, size: 17),
          prefixIconColor: !isPrefixIcon ? null : Colors.black87,
          suffixIcon: suixIcon,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 40),
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 40),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2,
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
}

const inputGeneryString = '''

//Widget generico modificable

class InputGenery extends StatelessWidget {
  const InputGenery(
      {super.key,
      this.obscureText,
      this.textInputType,
      this.prefixIcon,
      this.onChanged,
      this.hintText,
      this.isPrefixIcon = true,
      this.suixIcon,
      this.isSufixIcon = false,
      this.borderRadius,
      this.onTap});

  final bool? obscureText;
  final TextInputType? textInputType;
  final IconData? prefixIcon;
  final Widget? suixIcon;
  final Function(String)? onChanged;
  final String? hintText;
  final bool isPrefixIcon;
  final bool isSufixIcon;
  final Function()? onTap;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: Get.width * .8,
      child: TextFormField(
        style: styleInputsText,
        keyboardType: textInputType ?? TextInputType.emailAddress,
        obscureText: obscureText ?? false,
        onTap: onTap,
        onChanged: onChanged,
        cursorColor: Colors.blueAccent[700],
        decoration: InputDecoration(
          hintText: hintText ?? 'Correo',
          hintStyle: Theme.of(context).textTheme.labelSmall,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          prefixIcon: !isPrefixIcon ? null : Icon(prefixIcon ?? Icons.email, size: 17),
          prefixIconColor: !isPrefixIcon ? null : Colors.black87,
          suffixIcon: suixIcon,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder( //Cuando el input tiene el focus o está seleccionado
            borderRadius: BorderRadius.circular(borderRadius ?? 40),
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder( //Cuando el Input no tiene focus o no esta seleccionado
            borderRadius: BorderRadius.circular(borderRadius ?? 40),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2,
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
}

''';

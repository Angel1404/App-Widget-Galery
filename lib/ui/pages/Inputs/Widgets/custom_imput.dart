import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomInputPage extends StatelessWidget {
  const CustomInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: Get.width * .8,
      child: const TextFormFieldCustom(
        errorText: 'Email incorrecto',
        hyntText: 'Email',
        prefixicon: Icon(Icons.email_outlined),
        txtInputType: TextInputType.emailAddress,
        bordeTotal: true,
      ),
    );
  }
}

class TextFormFieldCustom extends StatefulWidget {
  final bool? isPass;
  final bool? bordeTotal;
  final TextEditingController? controller;
  final int? maxLines;
  final TextInputType? txtInputType;
  final BorderRadius? bdRadius;
  final String? hyntText;
  final String? labelText;
  final String? errorText;
  final Widget? prefixicon;
  final Color? colorfill;
  final Color? colorfocus;
  final EdgeInsetsGeometry? padding;

  const TextFormFieldCustom(
      {super.key,
      this.isPass = false,
      this.bordeTotal = false,
      this.controller,
      this.maxLines = 1,
      required this.txtInputType,
      this.bdRadius = BorderRadius.zero,
      this.hyntText = "",
      this.labelText = "",
      required this.errorText,
      this.prefixicon,
      this.colorfill = Colors.transparent,
      this.colorfocus = Colors.grey,
      this.padding = EdgeInsets.zero});

  @override
  State<TextFormFieldCustom> createState() => _TextFormFieldCustom();
}

class _TextFormFieldCustom extends State<TextFormFieldCustom> {
  bool obstxt = true;
  Color errorcolor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding!,
      child: TextFormField(
        autofocus: false,
        controller: widget.controller,
        decoration: InputDecoration(
          errorBorder: widget.bordeTotal!
              ? OutlineInputBorder(borderSide: BorderSide(color: errorcolor))
              : UnderlineInputBorder(borderSide: BorderSide(color: errorcolor)),
          focusedErrorBorder: widget.bordeTotal!
              ? OutlineInputBorder(borderSide: BorderSide(color: errorcolor))
              : UnderlineInputBorder(borderSide: BorderSide(color: errorcolor)),
          border: widget.bordeTotal!
              ? OutlineInputBorder(
                  borderRadius: widget.bdRadius!,
                )
              : UnderlineInputBorder(borderRadius: widget.bdRadius!),
          hintText: widget.hyntText,
          hintStyle: const TextStyle(color: Colors.grey),
          labelText: widget.labelText,
          labelStyle: TextStyle(color: widget.colorfocus),
          prefixIcon: widget.prefixicon,
          suffixIcon: !widget.isPass!
              ? null
              : InkWell(
                  child: Icon(
                    obstxt ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    color: widget.colorfocus,
                  ),
                  onTap: () {
                    setState(() {
                      obstxt = !obstxt;
                    });
                  },
                ),
          fillColor: widget.colorfill,
          filled: true,
          focusedBorder: widget.bordeTotal!
              ? OutlineInputBorder(borderRadius: widget.bdRadius!, borderSide: BorderSide(color: widget.colorfocus!))
              : UnderlineInputBorder(borderRadius: widget.bdRadius!, borderSide: BorderSide(color: widget.colorfocus!)),
          enabledBorder: widget.bordeTotal!
              ? OutlineInputBorder(borderRadius: widget.bdRadius!, borderSide: BorderSide(color: widget.colorfocus!))
              : UnderlineInputBorder(borderRadius: widget.bdRadius!, borderSide: BorderSide(color: widget.colorfocus!)),
        ),
        keyboardType: widget.txtInputType,
        obscureText: widget.isPass! ? obstxt : false,
        validator: ((value) {
          if (value!.isEmpty) {
            return widget.errorText;
          }
          if (widget.txtInputType == TextInputType.visiblePassword && value.length < 6) {
            return widget.errorText;
          }
          if (widget.txtInputType == TextInputType.emailAddress && !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}').hasMatch(value)) {
            return widget.errorText;
          }
          if ((widget.txtInputType == TextInputType.phone || widget.txtInputType == TextInputType.number) && value.length < 9) {
            return widget.errorText;
          }
          if ((widget.txtInputType == TextInputType.text || widget.txtInputType == TextInputType.name) && value.length < 3) {
            return widget.errorText;
          }
          return null;
        }),
      ),
    );
  }
}

const textFormFieldCustomString = '''

//By: Elmer
//Valido para Emails, numero de telefonos, texto y contraseñas.
//Tipos de inputs : TextInputType.emailAddress , TextInputType.phone o TextInputType.number ,TextInputType.text o TextInputType.name , extInputType.visiblePassword

class TextFormFieldCustom extends StatefulWidget {
  final bool? isPass; //para saber si es input de contraseña o no
  final bool? bordeTotal; //Si quieres o no el inpouy¿t con borders                                                                                                                                                           
  final TextEditingController? controller;
  final int? maxLines;
  final TextInputType? txtInputType;
  final BorderRadius? bdRadius; //Radio de los bordes
  final String? hyntText;
  final String? labelText;
  final String? errorText;
  final Widget? prefixicon;
  final Color? colorfill;
  final Color? colorfocus;
  final EdgeInsetsGeometry? padding;

  const TextFormFieldCustom(
      {super.key,
      this.isPass = false,
      this.bordeTotal = false,
      this.controller,
      this.maxLines = 1,
      required this.txtInputType,
      this.bdRadius = BorderRadius.zero,
      this.hyntText = "",
      this.labelText = "",
      required this.errorText,
      this.prefixicon,
      this.colorfill = Colors.transparent,
      this.colorfocus = Colors.grey,
      this.padding = EdgeInsets.zero});

  @override
  State<TextFormFieldCustom> createState() => _TextFormFieldCustom();
}

class _TextFormFieldCustom extends State<TextFormFieldCustom> {
  bool obstxt = true;
  Color errorcolor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding!,
      child: TextFormField(
        autofocus: false,
        controller: widget.controller,
        decoration: InputDecoration(
          errorBorder: widget.bordeTotal!
              ? OutlineInputBorder(borderSide: BorderSide(color: errorcolor))
              : UnderlineInputBorder(borderSide: BorderSide(color: errorcolor)),
          focusedErrorBorder: widget.bordeTotal!
              ? OutlineInputBorder(borderSide: BorderSide(color: errorcolor))
              : UnderlineInputBorder(borderSide: BorderSide(color: errorcolor)),
          border: widget.bordeTotal!
              ? OutlineInputBorder(
                  borderRadius: widget.bdRadius!,
                )
              : UnderlineInputBorder(borderRadius: widget.bdRadius!),
          hintText: widget.hyntText,
          hintStyle: const TextStyle(color: Colors.grey),
          labelText: widget.labelText,
          labelStyle: TextStyle(color: widget.colorfocus),
          prefixIcon: widget.prefixicon,
          suffixIcon: !widget.isPass!
              ? null
              : InkWell(
                  child: Icon(
                    obstxt ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    color: widget.colorfocus,
                  ),
                  onTap: () {
                    setState(() {
                      obstxt = !obstxt;
                    });
                  },
                ),
          fillColor: widget.colorfill,
          filled: true,
          focusedBorder: widget.bordeTotal!
              ? OutlineInputBorder(borderRadius: widget.bdRadius!, borderSide: BorderSide(color: widget.colorfocus!))
              : UnderlineInputBorder(borderRadius: widget.bdRadius!, borderSide: BorderSide(color: widget.colorfocus!)),
          enabledBorder: widget.bordeTotal!
              ? OutlineInputBorder(borderRadius: widget.bdRadius!, borderSide: BorderSide(color: widget.colorfocus!))
              : UnderlineInputBorder(borderRadius: widget.bdRadius!, borderSide: BorderSide(color: widget.colorfocus!)),
        ),
        keyboardType: widget.txtInputType,
        obscureText: widget.isPass! ? obstxt : false,
        validator: ((value) {
          if (value!.isEmpty) {
            return widget.errorText;
          }
          if (widget.txtInputType == TextInputType.visiblePassword && value.length < 6) {
            return widget.errorText;
          }
          if (widget.txtInputType == TextInputType.emailAddress && !RegExp(r'^[w-.]+@([w-]+.)+[w-]{2,4}').hasMatch(value)) {
            return widget.errorText;
          }
          if ((widget.txtInputType == TextInputType.phone || widget.txtInputType == TextInputType.number) && value.length < 9) {
            return widget.errorText;
          }
          if ((widget.txtInputType == TextInputType.text || widget.txtInputType == TextInputType.name) && value.length < 3) {
            return widget.errorText;
          }
          return null;
        }),
      ),
    );
  }
}
''';

const customInputPageString = '''

  //Implementación

class CustomInputPage extends StatelessWidget {
  const CustomInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: Get.width * .8,
      child: const TextFormFieldCustom(
        errorText: 'Email incorrecto',
        txtInputType: TextInputType.emailAddress,
      ),
    );
  }
}
''';

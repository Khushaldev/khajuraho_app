import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_theme.dart';
import '../../helpers/constants.dart';
import '../../helpers/enums.dart';

class InputText extends StatelessWidget {
  final String? label;
  final EdgeInsets padding;
  final double borderRadius;
  final bool isEnabled;
  final InputSize size;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final Function()? prefixOnTap;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final Function()? suffixOnTap;
  final int? minLines;
  final int? maxLines;
  final bool hasBox;

  const InputText({
    super.key,
    this.label,
    this.padding = allPadding12,
    this.borderRadius = defaultPadding / 2,
    this.isEnabled = true,
    this.size = InputSize.medium,
    this.controller,
    this.onChanged,
    this.autoValidateMode,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.prefixIcon,
    this.prefixIconColor,
    this.prefixOnTap,
    this.suffixIcon,
    this.suffixIconColor,
    this.suffixOnTap,
    this.minLines,
    this.maxLines,
    this.hasBox = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: hasBox
          ? BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8))
          : const BoxDecoration(),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: padding,
          border: border(Colors.black, hasBox),
          enabledBorder: border(Colors.black, hasBox),
          disabledBorder: border(Colors.black, hasBox),
          focusedBorder: border(Colors.black, hasBox),
          errorBorder: border(Colors.black, hasBox),
          focusedErrorBorder: border(Colors.black, hasBox),
          errorStyle: const TextStyle(
            color: Colors.black,
          ),
          hintText: label,
          hintStyle: TextStyle(fontSize: getFontSize(), color: Colors.black),
          prefixIcon: prefixIcon != null
              ? InkWell(
                  onTap: prefixOnTap,
                  child: Center(
                    child: Container(
                      margin: horizontalPadding4,
                      child: FaIcon(
                        prefixIcon,
                        size: getFontSize() * 1.15,
                        color: prefixIconColor ?? Colors.black,
                      ),
                    ),
                  ),
                )
              : null,
          prefixIconConstraints: BoxConstraints(
            maxWidth: getFontSize() * 2.3,
            maxHeight: getFontSize() * 2.3,
          ),
          suffixIcon: suffixIcon != null
              ? InkWell(
                  onTap: suffixOnTap,
                  child: Center(
                    child: Container(
                      margin: horizontalPadding4,
                      child: FaIcon(suffixIcon,
                          size: getFontSize() * 1.15, color: suffixIconColor ?? Colors.black),
                    ),
                  ),
                )
              : null,
          suffixIconConstraints: BoxConstraints(
            maxWidth: getFontSize() * 2.3,
            maxHeight: getFontSize() * 2.3,
          ),
        ),
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        validator: validator,
        controller: controller,
        onChanged: onChanged,
        style: GoogleFonts.poppins(
          fontSize: getFontSize(),
          color: Colors.black,
        ),
        enabled: isEnabled,
        autovalidateMode: autoValidateMode,
        minLines: minLines,
        maxLines: maxLines,
      ),
    );
  }

  InputBorder border(Color color, bool hasBox) {
    if (hasBox) return InputBorder.none;
    return UnderlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: color,
      ),
    );
  }

  double getFontSize() {
    switch (size) {
      case InputSize.extraSmall:
        return AppTheme.extraSmall;
      case InputSize.small:
        return AppTheme.small;
      case InputSize.large:
        return AppTheme.large;
      case InputSize.extraLarge:
        return AppTheme.extraLarge;
      default:
        return AppTheme.medium;
    }
  }
}

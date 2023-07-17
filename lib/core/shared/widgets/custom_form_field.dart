import 'package:flutter/material.dart';

import '../../managers/color_manager.dart';
import '../../managers/size_manager.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final TextInputType? inputType;
  final bool isPassword;
  final IconData? suffix;
  final Widget? prefix;
  final VoidCallback? onSuffixPressed;
  final String? Function(String?)? validator;
  final bool enabled;
  final bool readOnly;
  final VoidCallback? onTap;
  final Function(String?)? onChanged;

  const CustomFormField({
    Key? key,
    this.controller,
    this.hint,
    this.inputType,
    this.isPassword = false,
    this.suffix,
    this.prefix,
    this.onSuffixPressed,
    this.validator,
    this.enabled = true,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      obscureText: isPassword,
      readOnly: readOnly,
      onTap: onTap,
      onChanged: onChanged,
      textAlignVertical: TextAlignVertical.center,
      validator: validator,
      enabled: enabled,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: ColorManager.profileSubtitle,
              fontWeight: FontWeight.w700,
            ),
        prefixIcon: prefix,
        suffixIcon: GestureDetector(
          onTap: onSuffixPressed,
          child: Icon(
            suffix,
            color: ColorManager.genderTitle,
          ),
        ),
        filled: true,
        fillColor: ColorManager.fieldFill,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(
            AppRadius.borderRadius16,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(
            AppRadius.borderRadius16,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(
            AppRadius.borderRadius16,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: ColorManager.grey300,
          ),
          borderRadius: BorderRadius.circular(
            AppRadius.borderRadius16,
          ),
        ),
      ),
    );
  }
}

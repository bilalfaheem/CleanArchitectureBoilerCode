// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, camel_case_extensions
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_bloc/resources/theme/app_text_style.dart';
import 'package:todo_bloc/resources/theme/app_theme.dart';

class AppTextField extends StatefulWidget {
  final bool? hasError, readOnly, isEnabled;
  final bool isObscure;

  final double width;
  final double height;
  final double? fontsize, labelfont, borderRadius;

  final int? maxlines, minlines;

  final String? text, hint;
  final Color? colors, fborder, eborder, bordercolor;

  final FocusNode? focus;
  final TextInputType? keyboard;
  final TextInputAction? textInputAction;

  final TextEditingController? controller;

  final void Function()? onTap;
  final void Function(String)? submit;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  final Widget? icon, suffixIcon, prefixIcon, labelText;

  const AppTextField(
      {super.key,
      this.inputFormatters,
      this.readOnly = false,
      this.labelfont,
      this.submit,
      this.colors,
      this.fontsize,
      this.text,
      this.controller,
      this.hint,
      this.bordercolor,
      this.validator,
      this.icon,
      this.suffixIcon,
      required this.width,
      this.isObscure = false,
      this.prefixIcon,
      this.height = 50,
      this.hasError,
      this.maxlines,
      this.fborder,
      this.eborder,
      this.keyboard,
      this.focus,
      this.isEnabled,
      this.onTap,
      this.textInputAction,
      this.minlines,
      this.labelText,
      this.borderRadius});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    double effectiveBorderRadius = widget.borderRadius ?? 67.r;
    return SizedBox(
      width: widget.width,
      height: widget.height + ((widget.hasError ?? false) ? 40.0 : 0.0),
      child: TextFormField(
        inputFormatters: widget.inputFormatters,
        validator: widget.validator,
        textInputAction: widget.textInputAction,
        readOnly: widget.readOnly ?? false,
        controller: widget.controller,
        onTap: widget.onTap,
        onTapOutside: (_) => widget.focus?.unfocus(),
        focusNode: widget.focus,
        maxLines: widget.maxlines ?? 1,
        minLines: widget.minlines ?? 1,
        obscureText: widget.isObscure,
        cursorColor: Colors.black,
        keyboardType: widget.keyboard,
        style: AppTextStyle.displayRegular.copyWith(
            color: AppTheme.secondaryColor, fontWeight: FontWeight.w400),
        // clipBehavior: Clip.hardEdge,
        decoration: InputDecoration(
          counterText: "",
          semanticCounterText: "",
          // contentPadding: EdgeInsets.symmetric(vertical: 20.h),
          floatingLabelBehavior: FloatingLabelBehavior.always,

          // prefixIcon: Icon(Icons.email),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: widget.prefixIcon,

          labelText: widget.text,
          hintText: widget.hint,
          labelStyle: AppTextStyle.displaySmall,

          suffixIcon: widget.suffixIcon,
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(.5.r),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          label: widget.labelText,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppTheme.borderColor, width: 1.w),
            borderRadius:
                BorderRadius.all(Radius.circular(effectiveBorderRadius)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppTheme.borderColor, width: 1.w),
            borderRadius:
                BorderRadius.all(Radius.circular(effectiveBorderRadius)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppTheme.borderColor, width: 1.w),
            borderRadius:
                BorderRadius.all(Radius.circular(effectiveBorderRadius)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppTheme.borderColor, width: 1.w),
            borderRadius:
                BorderRadius.all(Radius.circular(effectiveBorderRadius)),
          ),
        ),
      ),
    );
  }
}

part of '00_main_app_button.dart';

class MainAppTextField extends StatelessWidget {
  final String prefixIconPath;
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final void Function(String value)? onFieldSubmitted;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final bool autoFocus;
  final double? labelFontSize;

  const MainAppTextField({
    super.key,
    required this.prefixIconPath,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.textInputAction,
    required this.keyboardType,
    this.controller,
    this.validator,
    this.onFieldSubmitted,
    this.focusNode,
    this.autoFocus = false,
    this.inputFormatters, this.labelFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      obscureText: obscureText,
      autofocus: autoFocus,
      inputFormatters: inputFormatters,
      onTap: () {
        if (controller != null && controller!.value.text.isNotEmpty) {
          controller!.selection = TextSelection.fromPosition(
            TextPosition(offset: controller!.value.text.length),
          );
        }
      },
      textInputAction: textInputAction ?? TextInputAction.unspecified,
      keyboardType: keyboardType,
      controller: controller,
      validator: validator ??
          (String? value) {
            if (value!.isEmpty) {
              return S.of(context).The_can_not_be_empty(hintText);
            }
            return null;
          },
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 10.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none,
        ),
        labelText: hintText,
        alignLabelWithHint: true,
        suffixIcon: suffixIcon,
        labelStyle: TextStyle(
          fontSize: labelFontSize??13.sp,
          color: const Color(0xffa2b6b9),
        ),
        fillColor: AppColor.blueGrayColor,
        filled: true,
        prefixIcon: Container(
          alignment: Alignment.center,
          width: 25.w,
          child: SvgPicture.asset(
            prefixIconPath,
            width: 18.w,
            height: 18.h,
            colorFilter: const ColorFilter.mode(Color(0xffA2B6B9), BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}

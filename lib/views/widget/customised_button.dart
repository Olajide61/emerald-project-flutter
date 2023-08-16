import 'package:emerald_projects/views/widget/customised_text.dart';
import 'package:flutter/material.dart';


class CustomisedButton extends StatelessWidget {
  const CustomisedButton(
    this.text, {
    super.key,
    required this.onPressed,
    required this.buttonColor,
    required this.textColor,
    this.borderColor,
    this.busy = false,
    this.height = 52,
    this.icon,
    this.fontSize,
    this.borderRadius,
    this.safeArea,
    this.fontWeight,
    this.rightIcon,
  });

  final String text;
  final Function()? onPressed;
  final Color buttonColor;
  final Color textColor;
  final Color? borderColor;
  final bool busy;
  final bool? safeArea;
  final double height;
  final double? borderRadius;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Widget? icon;
  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: safeArea ?? true,
      child: SizedBox(
        height: 52,
        child: TextButton(
          onPressed: (busy || onPressed == null) ? null : onPressed,
          style: TextButton.styleFrom(
            disabledBackgroundColor: Color.lerp(buttonColor, Colors.white, .5),
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
            side: (busy || onPressed == null)
                ? null
                : BorderSide(color: borderColor ?? buttonColor),
          ),
          child: busy
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) icon!,
                    CustomisedText(
                      text,
                      color: textColor,
                      fontSize: fontSize ?? 16,
                      fontWeight: fontWeight ?? FontWeight.w400,
                    ),
                    if (rightIcon != null) rightIcon!,
                  ],
                ),
        ),
      ),
    );
  }
}

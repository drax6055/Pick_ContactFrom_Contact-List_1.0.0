import 'package:flutter/material.dart';

class ElevatedButtonExample extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;
  final ButtonStyle? style;
  final Widget? icon;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;

  const ElevatedButtonExample({
    Key? key,
    required this.text,
    required this.onPressed,
    this.onLongPress,
    this.style,
    this.icon,
    this.padding,
    this.height = 50.0,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: SizedBox(
        height: height,
        width: width,
        child: icon != null
            ? ElevatedButton.icon(
          onPressed: onPressed,
          onLongPress: onLongPress,
          icon: icon!,
          label: Text(text, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
          style: style ?? _defaultStyle(),
        )
            : ElevatedButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: style ?? _defaultStyle(),
          child: Text(text, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }

  ButtonStyle _defaultStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.teal, // Button color
      foregroundColor: Colors.white, // Text color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Border radius
      ),
    );
  }
}

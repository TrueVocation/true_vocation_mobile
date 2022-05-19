import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.text, this.color, this.radius, required this.onPressed}) : super(key: key);

  final String? text;
  final Color? color;
  final double? radius;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
          side: BorderSide(color: color!)
        )
      )
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: SizedBox(
        height: 48,
        width: double.maxFinite,
        child: Center(
          child: Text(
            text!
          ),
        ),
      )
    );
  }
}

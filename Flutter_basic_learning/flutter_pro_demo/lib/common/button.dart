import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {Key? key,
      this.text,
      this.width,
      this.height,
      this.radius,
      this.onPressed})
      : super(key: key);

  final String? text;
  final double? width;
  final double? height;
  final double? radius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: height,
      width: width ?? double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius ?? 32)),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text( text ?? "Default",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.white)),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            minimumSize: MaterialStateProperty.all(Size.zero)),
      ),
    );
  }
}

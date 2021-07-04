import 'package:flutter/material.dart';
import 'package:foodify_app/constants.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final bool isTransparent;

  const ButtonWidget({
    Key? key,
    required this.text,
    this.isTransparent = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.all(0),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Ink(
          width: size.width,
          height: 51,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: isTransparent
                  ? [Colors.transparent, Colors.transparent]
                  : ([Color(0xFFF9881F), Color(0xFFFF774C)]),
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$text",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isTransparent ? kPrimaryColor : Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

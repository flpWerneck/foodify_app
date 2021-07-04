import 'package:flutter/material.dart';
import 'package:foodify_app/components/buttom_widget.dart';
import 'package:foodify_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
            child: Text(
              "Order from your favourite stores or vendors",
              style: GoogleFonts.dmSans(
                color: Color(0xFF1C1C1C),
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset(
            "assets/images/initial_page_phone.png",
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    margin: EdgeInsets.only(
                        top: kDefaultPadding, right: kDefaultPadding / 1.5),
                    decoration: BoxDecoration(
                      color: kAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    margin: EdgeInsets.only(
                        top: kDefaultPadding, right: kDefaultPadding / 1.5),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    margin: EdgeInsets.only(
                        top: kDefaultPadding, right: kDefaultPadding / 1.5),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtonWidget(text: "Create an account"),
          ButtonWidget(
            text: "Login",
            isTransparent: true,
          ),
        ],
      ),
    );
  }
}

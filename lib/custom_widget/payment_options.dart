import 'package:flutter/material.dart';
import 'package:flutterapp/custom_widget/app_text.dart';

class PaymentOptions extends StatelessWidget {
  String iconname;
  String text;
  PaymentOptions(this.iconname, this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 20, 0, 0),
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Container(
                width: 30,
                height: 30,
                child: Image(image: AssetImage(iconname),)
              ),
            ),
            AppText(16, Colors.black87, text)
          ],
        ),
      ),
    );
  }
}

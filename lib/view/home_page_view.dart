import 'package:flutter/material.dart';
import 'package:flutterapp/custom_widget/app_text.dart';
import 'package:flutterapp/custom_widget/payment_options.dart';

class HomePageView extends StatelessWidget {
  ScrollController _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(38, 92, 126, 1),
      child: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 30, 0, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: 20,
                      height: 20,
                      child: Image(image: AssetImage('img/logo.png'),)
                    ),
                  ),
                  AppText(15,Colors.white, 'Payment App' ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
              child: Container(
                height: MediaQuery.of(context).size.height-160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(40),
                    topRight: const Radius.circular(40)
                  )
                ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 120, 0, 0),
                    child: Column(
                      children: [
                        Container(margin: const EdgeInsets.only(right: 120.0),child: AppText(14.0, Colors.black54, 'Other Payment Methods')),
                        PaymentOptions('img/card.png', 'Credit/Debit Card'),
                        PaymentOptions('img/google.png', 'Google Wallet'),
                        PaymentOptions('img/apay.png', 'Amazon Pay'),
                        PaymentOptions('img/paypal.png', 'PayPal'),
                        PaymentOptions('img/visa.png', 'Visa'),
                        PaymentOptions('img/mastercard.png', 'Master Card'),
                      ],
                    ),
                  )
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(38, 92, 126, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(20),
                        topRight: const Radius.circular(20)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                          child: AppText(25,Colors.white,'\$399'),
                        ),
                        Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Center(child: Text('Pay Now', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Poppins', fontSize: 12),)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90,
              child: SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: ListView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    controller: _controller,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.1),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(child: Text('+', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54,fontFamily: 'Poppins', fontSize: 30),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(55, 73, 97, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Container( width:60,child: Image( image: AssetImage('img/mastercard.png'),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(37, 57, 128, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Container( width:60,child: Image( image: AssetImage('img/paypal.png'),)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

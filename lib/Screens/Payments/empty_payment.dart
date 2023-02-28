import 'package:maan_rent/Screens/Payments/add_payment.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';


class EmptyPayment extends StatefulWidget {
  const EmptyPayment({Key? key}) : super(key: key);

  @override
  _EmptyPaymentState createState() => _EmptyPaymentState();
}

class _EmptyPaymentState extends State<EmptyPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kMainColor,
        onPressed: () {
          const AddPayment().launch(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: Text(
          'Empty Payment',
          style: kTextStyle.copyWith(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kMainColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: context.width(),
              height: context.height(),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: kDarkWhite,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 200.0,
                  ),
                  Image.asset('images/emptypayment.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

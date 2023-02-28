import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class PaymentSettings extends StatefulWidget {
  const PaymentSettings({Key? key}) : super(key: key);

  @override
  _PaymentSettingsState createState() => _PaymentSettingsState();
}

class _PaymentSettingsState extends State<PaymentSettings> {
  List<String> userChecked = [];

  void _onSelected(bool selected, String dataName) {
    if (selected == true) {
      setState(() {
        userChecked.add(dataName);
      });
    } else {
      setState(() {
        userChecked.remove(dataName);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Payment Settings',
          style: kTextStyle.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kMainColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: context.width(),
              height: context.height(),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10.0),
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SwitchListTile.adaptive(
                          title: Text('Paypal',style: kTextStyle,),
                          secondary: Image.asset('images/paypal.png'),
                          value: userChecked.contains('Paypal'),
                          onChanged: (val) {
                            _onSelected(val, 'Paypal');
                          }),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SwitchListTile.adaptive(
                          title: Text('Bkash',style: kTextStyle,),
                          secondary: Image.asset('images/bkash.png'),
                          value: userChecked.contains('Bkash'),
                          onChanged: (val) {
                            _onSelected(val, 'Bkash');
                          }),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SwitchListTile.adaptive(
                          title: Text('Debit Card',style: kTextStyle,),
                          secondary: Image.asset('images/card.png'),
                          value: userChecked.contains('Debit Card'),
                          onChanged: (val) {
                            _onSelected(val, 'Debit Card');
                          }),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SwitchListTile.adaptive(
                          title: Text('Master card',style: kTextStyle,),
                          secondary: Image.asset('images/mastercard.png'),
                          value: userChecked.contains('Master card'),
                          onChanged: (val) {
                            _onSelected(val, 'Master card');
                          }),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SwitchListTile.adaptive(
                          title: Text('Paytm',style: kTextStyle,),
                          secondary: Image.asset('images/paytm.png'),
                          value: userChecked.contains('Paytm'),
                          onChanged: (val) {
                            _onSelected(val, 'Paytm');
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

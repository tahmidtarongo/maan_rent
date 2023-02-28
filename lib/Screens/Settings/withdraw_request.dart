import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class WithdrawRequest extends StatefulWidget {
  const WithdrawRequest({Key? key}) : super(key: key);

  @override
  _WithdrawRequestState createState() => _WithdrawRequestState();
}

class _WithdrawRequestState extends State<WithdrawRequest> {

  List<String> data = [
    "Paypal",
    "Stripe",
    "US Bank",
    "Capital One Bank"
  ];
  String propertyType = "Paypal";

  DropdownButton<String> getType() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String type in data) {
      var item = DropdownMenuItem(
        child: Text(type),
        value: type,
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: propertyType,
      onChanged: (value) {
        setState(() {
          propertyType = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        appBar: AppBar(
          title: Text(
            'Withdraw Request',
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
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: kDarkWhite,
                  ),
                  padding: const EdgeInsets.only(top: 30),
                  width: context.width(),
                  child: Column(
                    children: [
                      Text(
                        'Withdrawable Amount',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        '\$4,000.00',
                        style: kTextStyle.copyWith(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10.0),
                        width: context.width(),
                        height: context.height(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                height: 60.0,
                                child: FormField(
                                  builder: (FormFieldState<dynamic> field) {
                                    return InputDecorator(
                                      decoration: InputDecoration(
                                          floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                          labelText: 'Select Account',
                                          labelStyle: kTextStyle,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5.0))),
                                      child:
                                      DropdownButtonHideUnderline(child: getType()),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: AppTextField(
                                textFieldType: TextFieldType.NAME,
                                decoration: const InputDecoration(
                                  labelText: 'Enter Amount',
                                  prefixIcon: Icon(Icons.attach_money,color: kTitleColor,),
                                  hintText: 'Enter the amount you want to withdraw',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            ButtonGlobal(buttontext: 'Submit', buttonDecoration: kButtonDecoration.copyWith(color: kMainColor), onPressed: (){

                            }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

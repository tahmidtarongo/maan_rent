import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'My Account',
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
                  Text('Change Password',style: kTextStyle.copyWith(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Enter your email Address to recover your password',style: kTextStyle.copyWith(fontSize: 16.0,color: kGreyTextColor),textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.EMAIL,
                      decoration: const InputDecoration(
                        labelText: 'Email Address',
                        hintText: 'maantheme@gmail.com',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ButtonGlobal(
                      buttontext: 'Continue',
                      buttonDecoration:
                      kButtonDecoration.copyWith(color: kMainColor),
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: "Check Your Email Inbox",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                        );
                        Navigator.pop(context);
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

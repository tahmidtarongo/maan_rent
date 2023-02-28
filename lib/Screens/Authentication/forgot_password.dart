import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Authentication/verification.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../constant.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60.0,),
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: kDarkWhite,
                  ),
                  padding: const EdgeInsets.all(20.0),
                  height: context.height(),
                  width: context.width(),
                  child: Column(
                    children: [
                      const SizedBox(height: 30.0,),
                      Text('Forgot password',style: kTextStyle.copyWith(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Enter your email Address to recover your password',style: kTextStyle.copyWith(color: kGreyTextColor),maxLines: 2,textAlign: TextAlign.center,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: AppTextField(
                          textFieldType: TextFieldType.EMAIL,
                          decoration: const InputDecoration(
                            labelText: 'Email Address',
                            hintText: 'example@example.com',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      ButtonGlobal(
                        buttontext: 'Continue',
                        buttonDecoration: kButtonDecoration,
                        onPressed: (){
                          const VerificationLandlord().launch(context);
                        },
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

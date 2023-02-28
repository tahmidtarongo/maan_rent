import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/GlobalComponents/otp_form.dart';
import 'package:maan_rent/Screens/Home/home.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../constant.dart';

class VerificationLandlord extends StatefulWidget {
  const VerificationLandlord({Key? key}) : super(key: key);

  @override
  _VerificationLandlordState createState() => _VerificationLandlordState();
}

class _VerificationLandlordState extends State<VerificationLandlord> {
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
                      Text('Verifications',style: kTextStyle.copyWith(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('6-digits pin has been sent to your email address,',style: kTextStyle.copyWith(color: kGreyTextColor),maxLines: 2,textAlign: TextAlign.center,),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: OtpForm(),
                      ),
                      ButtonGlobal(
                        buttontext: 'Continue',
                        buttonDecoration: kButtonDecoration,
                        onPressed: (){
                          const Home().launch(context);
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

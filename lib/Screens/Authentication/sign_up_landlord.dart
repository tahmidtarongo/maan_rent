import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Authentication/sign_in_landlord.dart';
import 'package:maan_rent/Screens/Authentication/verification.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../constant.dart';

class SignUpLandlord extends StatefulWidget {
  const SignUpLandlord({Key? key}) : super(key: key);

  @override
  _SignUpLandlordState createState() => _SignUpLandlordState();
}

class _SignUpLandlordState extends State<SignUpLandlord> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50.0,),
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
                  height: context.height(),
                  width: context.width(),
                  child: Column(
                    children: [
                      Image.asset('images/logo_color.png',),
                      const SizedBox(height: 30.0,),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10.0),
                        height: context.height()/1.4,
                        width: context.width(),
                        child: Column(
                          children: [
                            const SizedBox(height: 30.0,),
                            Text('Sign Up To Landlord',style: kTextStyle.copyWith(fontSize: 20.0,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 20.0,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: AppTextField(
                                textFieldType: TextFieldType.NAME,
                                decoration: const InputDecoration(
                                  labelText: 'Full Name',
                                  hintText: 'Maan Team',
                                  border: OutlineInputBorder(),
                                ),
                              ),
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
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: AppTextField(
                                textFieldType: TextFieldType.PASSWORD,
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            ButtonGlobal(
                              buttontext: 'Sign Up',
                              buttonDecoration: kButtonDecoration,
                              onPressed: (){
                                const VerificationLandlord().launch(context);
                              },
                            ),
                            const SizedBox(height: 30.0,),
                            Hero(
                              tag: 'social',
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Card(
                                      elevation: 0.0,
                                      color: kDarkWhite,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                                        child: Center(
                                            child: Icon(
                                              FontAwesomeIcons.facebookF,
                                              size: 20.0,
                                              color: Color(0xFF3B5998),
                                            )),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    elevation: 0.0,
                                    color: kDarkWhite,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                                      child: Center(
                                        child: GoogleLogoWidget(size: 20,),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Card(
                                      elevation: 0.0,
                                      color: kDarkWhite,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                                        child: Center(
                                          child: Icon(
                                            FontAwesomeIcons.apple,
                                            size: 20.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already have an account? ',
                                    style: kTextStyle.copyWith(
                                        color: kGreyTextColor, fontSize: 14.0),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      const SignInLandLord().launch(context);
                                    },
                                    child: Text(
                                      'Sign in Here',
                                      style:
                                      kTextStyle.copyWith(color: kMainColor, fontSize: 14.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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

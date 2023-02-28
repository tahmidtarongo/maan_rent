import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maan_rent/Screens/Authentication/sign_in_landlord.dart';
import 'package:maan_rent/constant.dart';
import 'package:nb_utils/nb_utils.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                            Text('Who are you?',style: kTextStyle.copyWith(fontSize: 20.0,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 10.0,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Viverra ullamcorper duis pretium, te llus. Fermentum, faucibus tu',style: kTextStyle.copyWith(color: kGreyTextColor),maxLines: 2,textAlign: TextAlign.center,),
                            ),
                            const SizedBox(height: 50.0,),
                            Container(
                              width: context.width(),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: kSecondaryColor,
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading:const CircleAvatar(
                                  radius: 1.0,
                                  backgroundColor: kSecondaryColor,
                                ),
                                onTap: (){
                                  const SignInLandLord().launch(context);
                                },
                                title: Text('Landlord',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,),),
                                subtitle: Text('Manage your own properties',style: kTextStyle.copyWith(color: kGreyTextColor,fontSize: 14.0),),
                                trailing: Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: CircleAvatar(
                                    radius: 25.0,
                                    backgroundColor: kMainColor,
                                    child: Center(
                                      child: Image.asset('images/arrow.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0,),
                            Container(
                              width: context.width(),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xFFFFF1EE),
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading:const CircleAvatar(
                                  radius: 1.0,
                                  backgroundColor: Color(0xFFFFF1EE),
                                ),
                                title: Text('Tenant',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,),),
                                subtitle: Text('Log in to your rental account',style: kTextStyle.copyWith(color: kGreyTextColor,fontSize: 14.0),),
                                trailing: Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: CircleAvatar(
                                    radius: 25.0,
                                    backgroundColor: const Color(0xFFFB754D),
                                    child: Center(
                                      child: Image.asset('images/arrow.png'),
                                    ),
                                  ),
                                ),
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

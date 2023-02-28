import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'on_board.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    defaultBlurRadius = 10.0;
    defaultSpreadRadius = 0.5;

    finish(context);
    const OnBoard().launch(context);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[

            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("images/bg.png"), fit: BoxFit.cover,),
              ),
            ),
            const Center(
              child: Image(image: AssetImage("images/logo.png")),
            ),
            // Center(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisSize: MainAxisSize.max,
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       Text('Learning Management',style: kTextStyle.copyWith(fontSize: 20.0),),
            //       Text('Version 1.0.0',style: kTextStyle.copyWith(fontSize: 20.0),),
            //       const SizedBox(height: 50.0,),
            //     ],
            //   ),
            // ),

          ],
        )
    );
  }
}

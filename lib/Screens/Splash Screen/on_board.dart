import 'package:flutter/material.dart';
import 'package:maan_rent/Screens/Authentication/welcome_screen.dart';
import 'package:maan_rent/constant.dart';
import 'package:nb_utils/nb_utils.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndexPage = 0;

  List<Map<String, dynamic>> sliderList = [
    {
      "icon": 'images/onboard1.png',
      "title": 'Find Your Property',
      "description":
          'Lorem ipsum dolor sit amet, conse cte tur adip is cing elit. Sed mattis.Lorem ipsum dolor sit amet, conse cte tur adip is cing elit. Sed mattis.',
    },
    {
      "icon": 'images/onboard2.png',
      "title": 'Collect Rent Easily',
      "description":
          'Lorem ipsum dolor sit amet, conse cte tur adip is cing elit. Sed mattis.Lorem ipsum dolor sit amet, conse cte tur adip is cing elit. Sed mattis.',
    },
    {
      "icon": 'images/onboard3.png',
      "title": 'Your Comfort House',
      "description":
          'Lorem ipsum dolor sit amet, conse cte tur adip is cing elit. Sed mattis.Lorem ipsum dolor sit amet, conse cte tur adip is cing elit. Sed mattis.',
    },
  ];

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
                    color: kSecondaryColor,
                  ),
                  padding: const EdgeInsets.only(top: 30),
                  height: context.height(),
                  width: context.width(),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      PageView.builder(
                        itemCount: sliderList.length,
                        controller: pageController,
                        onPageChanged: (int index) =>
                            setState(() => currentIndexPage = index),
                        itemBuilder: (_, index) {
                          return Column(
                            children: [
                              const SizedBox(height: 50.0,),
                              Image.asset(sliderList[index]['icon'],height: 300,),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Container(
                                  padding: const EdgeInsets.all(40.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        sliderList[index]['title'].toString(),
                                        style: kTextStyle.copyWith(fontSize: 20.0),
                                      ),
                                      const SizedBox(height: 10.0,),
                                      SizedBox(
                                        width: context.width(),
                                        child: Text(
                                          sliderList[index]['description'].toString(),
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 5,
                                          style: kTextStyle.copyWith(
                                              color: kGreyTextColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndexPage < 2
                                        ? pageController.nextPage(
                                        duration: const Duration(microseconds: 3000),
                                        curve: Curves.bounceInOut)
                                        : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const WelcomeScreen()),
                                    );
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 40.0,
                                  backgroundColor: kMainColor,
                                  child: Center(
                                    child: Image.asset('images/arrow.png'),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 90.0,),
                            ],
                          );
                        },
                      ),
                      DotIndicator(
                        currentDotSize: 15,
                        dotSize: 6,
                        pageController: pageController,
                        pages: sliderList,
                        indicatorColor: kMainColor,
                        unselectedIndicatorColor: kSecondaryColor,
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

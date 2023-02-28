import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class ApplicationList extends StatefulWidget {
  const ApplicationList({Key? key}) : super(key: key);

  @override
  _ApplicationListState createState() => _ApplicationListState();
}

class _ApplicationListState extends State<ApplicationList> {
  bool isApproved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Application List',
          style: kTextStyle.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kMainColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: context.width(),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: kDarkWhite,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            height: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(color: kMainColor),
                                color: !isApproved ? kMainColor : Colors.white),
                            child: Center(
                                child: Text(
                              'Pending',
                              style: kTextStyle.copyWith(
                                  color:
                                      !isApproved ? Colors.white : kMainColor),
                            )),
                          ).onTap(() {
                            setState(() {
                              isApproved = !isApproved;
                            });
                          }),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            height: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(color: kMainColor),
                                color: isApproved ? kMainColor : Colors.white),
                            child: Center(
                                child: Text(
                              'Approved',
                              style: kTextStyle.copyWith(
                                  color:
                                      isApproved ? Colors.white : kMainColor),
                            )),
                          ).onTap(() {
                            setState(() {
                              isApproved = !isApproved;
                            });
                          }),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    width: context.width(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('images/profile.png'),
                          title: Text(
                            'Sahidul Islam',
                            style: kTextStyle,
                          ),
                          subtitle: Text(
                            '1640 winifred way, Richmond',
                            style: kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'First Name',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Sahidul',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Last Name',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Islam',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Phone Number',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '+880 17657 432211',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Email Address',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'example@exaple.com',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: kMainColor,
                              ),
                              child: Text(
                                'Approve',
                                style: kTextStyle.copyWith(color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: kCircleColor.withOpacity(0.1),
                              ),
                              child: Text(
                                ' Reject ',
                                style: kTextStyle.copyWith(color: kCircleColor),
                              ),
                            ),
                          ],
                        ).visible(!isApproved),
                        Center(
                          child: Text('Approved',style: kTextStyle.copyWith(color: kMainColor,fontSize: 20.0),),
                        ).visible(isApproved),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    width: context.width(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('images/profile.png'),
                          title: Text(
                            'Sahidul Islam',
                            style: kTextStyle,
                          ),
                          subtitle: Text(
                            '1640 winifred way, Richmond',
                            style: kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'First Name',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Sahidul',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Last Name',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Islam',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Phone Number',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '+880 17657 432211',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Email Address',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'example@exaple.com',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: kMainColor,
                              ),
                              child: Text(
                                'Approve',
                                style: kTextStyle.copyWith(color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: kCircleColor.withOpacity(0.1),
                              ),
                              child: Text(
                                ' Reject ',
                                style: kTextStyle.copyWith(color: kCircleColor),
                              ),
                            ),
                          ],
                        ).visible(!isApproved),
                        Center(
                          child: Text('Rejected',style: kTextStyle.copyWith(color: kCircleColor,fontSize: 20.0),),
                        ).visible(isApproved),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    width: context.width(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('images/profile.png'),
                          title: Text(
                            'Sahidul Islam',
                            style: kTextStyle,
                          ),
                          subtitle: Text(
                            '1640 winifred way, Richmond',
                            style: kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'First Name',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Sahidul',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Last Name',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Islam',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Phone Number',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '+880 17657 432211',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Email Address',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              ':',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'example@exaple.com',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: kMainColor,
                              ),
                              child: Text(
                                'Approve',
                                style: kTextStyle.copyWith(color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: kCircleColor.withOpacity(0.1),
                              ),
                              child: Text(
                                ' Reject ',
                                style: kTextStyle.copyWith(color: kCircleColor),
                              ),
                            ),
                          ],
                        ).visible(!isApproved),
                        Center(
                          child: Text('Rejected',style: kTextStyle.copyWith(color: kCircleColor,fontSize: 20.0),),
                        ).visible(isApproved),
                      ],
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

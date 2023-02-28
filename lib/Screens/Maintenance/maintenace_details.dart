import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class MaintenanceDetails extends StatefulWidget {
  const MaintenanceDetails({Key? key}) : super(key: key);

  @override
  _MaintenanceDetailsState createState() => _MaintenanceDetailsState();
}

class _MaintenanceDetailsState extends State<MaintenanceDetails> {
  bool isApproved = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset(
            'images/profile.png',
            color: Colors.white,
          ),
          title: Text(
            'Sahidul Islam',
            style: kTextStyle.copyWith(color: Colors.white),
          ),
          subtitle: Text(
            '1640 winifred way, Richmond',
            style: kTextStyle.copyWith(color: Colors.white),
          ),
        ),
        titleSpacing: 0.0,
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
              padding: const EdgeInsets.all(20.0),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Equity Point Real Estate',
                    style: kTextStyle.copyWith(fontSize: 16.0),
                  ),
                  Divider(
                    color: kGreyTextColor.withOpacity(0.1),
                    thickness: 2.0,
                  ),
                  ReadMoreText(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.',
                    style: kTextStyle.copyWith(
                        color: kGreyTextColor, fontSize: 16.0),
                    trimLines: 10,
                    colorClickableText: kCircleColor,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text('Damage Image',style: kTextStyle,),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: kGreyTextColor,
                      ),
                      const SizedBox(width: 4.0,),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: kGreyTextColor,
                      ),
                      const SizedBox(width: 4.0,),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: kGreyTextColor,
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
                      ).onTap((){
                        setState(() {
                          isApproved = !isApproved;
                        });
                      }),
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
                      ).onTap((){
                        setState(() {
                          isApproved = !isApproved;
                        });
                      }),
                    ],
                  ).visible(isApproved),
                  Center(
                    child: Text('Approved',style: kTextStyle.copyWith(color: kMainColor,fontSize: 20.0),),
                  ).visible(!isApproved),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

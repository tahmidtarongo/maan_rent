import 'package:flutter/material.dart';
import 'package:maan_rent/Screens/Maintenance/maintenace_details.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../constant.dart';

class MaintenanceList extends StatefulWidget {
  const MaintenanceList({Key? key}) : super(key: key);

  @override
  _MaintenanceListState createState() => _MaintenanceListState();
}

class _MaintenanceListState extends State<MaintenanceList> {

  bool isApproved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Maintenance Request',
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
                        Text(
                          'Equity Point Real Estate',
                          style: kTextStyle.copyWith(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        ReadMoreText(
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.',
                          style: kTextStyle.copyWith(
                              color: kGreyTextColor, fontSize: 14.0),
                          trimLines: 3,
                          colorClickableText: kCircleColor,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                        ).onTap((){
                          const MaintenanceDetails().launch(context);
                        }),
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
                        Text(
                          'Equity Point Real Estate',
                          style: kTextStyle.copyWith(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        ReadMoreText(
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.',
                          style: kTextStyle.copyWith(
                              color: kGreyTextColor, fontSize: 14.0),
                          trimLines: 3,
                          colorClickableText: kCircleColor,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                        ).onTap((){
                          const MaintenanceDetails().launch(context);
                        }),
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
                        Text(
                          'Equity Point Real Estate',
                          style: kTextStyle.copyWith(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        ReadMoreText(
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia conse quat duis enim velit mollit.',
                          style: kTextStyle.copyWith(
                              color: kGreyTextColor, fontSize: 14.0),
                          trimLines: 3,
                          colorClickableText: kCircleColor,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                        ).onTap((){
                          const MaintenanceDetails().launch(context);
                        }),
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

import 'package:flutter/material.dart';
import 'package:maan_rent/Screens/Lease/lease_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class LeaseList extends StatefulWidget {
  const LeaseList({Key? key}) : super(key: key);

  @override
  _LeaseListState createState() => _LeaseListState();
}

class _LeaseListState extends State<LeaseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Lease List',
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
              padding: const EdgeInsets.all(20.0),
              width: context.width(),
              height: context.height(),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: kDarkWhite,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shaidul Islam',
                              style: kTextStyle.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            Text(
                              'Unit: 2',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          '2464 Royal Ln. Mesa, New Jersey 45463',
                          style: kTextStyle.copyWith(color: kGreyTextColor),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lease Term: Month-to-Month',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            Text(
                              '\$2000',
                              style: kTextStyle.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ).onTap(() {
                    const LeaseDetails().launch(context);
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maan_rent/Screens/Properties/invite_to_apply.dart';
import 'package:maan_rent/Screens/Properties/property_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class PropertyList extends StatefulWidget {
  const PropertyList({Key? key}) : super(key: key);

  @override
  _PropertyListState createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Property List',
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
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage('images/property.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                padding: const EdgeInsets.only(right: 4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: kCircleColor,
                                      radius: 10.0,
                                      child: Text(
                                        '\$',
                                        style: kTextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      '2000',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Equity Point Real Estate',
                              style: kTextStyle.copyWith(fontSize: 18.0),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1640 winifred way, Richmond',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Property ID: 81265',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kMainColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Invite to Apply',
                                    style: kTextStyle.copyWith(
                                        color: kMainColor, fontSize: 12.0),
                                  ),
                                ).onTap((){
                                  const InviteToApply().launch(context);
                                }),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kCircleColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Assign to Tenant',
                                    style: kTextStyle.copyWith(
                                        color: kCircleColor, fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ).onTap((){
                    const PropertyDetails().launch(context);
                  }),
                  const SizedBox(height: 4.0,),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage('images/property.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                padding: const EdgeInsets.only(right: 4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: kCircleColor,
                                      radius: 10.0,
                                      child: Text(
                                        '\$',
                                        style: kTextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      '2000',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Equity Point Real Estate',
                              style: kTextStyle.copyWith(fontSize: 18.0),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1640 winifred way, Richmond',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Property ID: 81265',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kMainColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Invite to Apply',
                                    style: kTextStyle.copyWith(
                                        color: kMainColor, fontSize: 12.0),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kCircleColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Assign to Tenant',
                                    style: kTextStyle.copyWith(
                                        color: kCircleColor, fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0,),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage('images/property.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                padding: const EdgeInsets.only(right: 4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: kCircleColor,
                                      radius: 10.0,
                                      child: Text(
                                        '\$',
                                        style: kTextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      '2000',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Equity Point Real Estate',
                              style: kTextStyle.copyWith(fontSize: 18.0),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1640 winifred way, Richmond',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Property ID: 81265',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kMainColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Invite to Apply',
                                    style: kTextStyle.copyWith(
                                        color: kMainColor, fontSize: 12.0),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kCircleColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Assign to Tenant',
                                    style: kTextStyle.copyWith(
                                        color: kCircleColor, fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0,), Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage('images/property.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                padding: const EdgeInsets.only(right: 4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: kCircleColor,
                                      radius: 10.0,
                                      child: Text(
                                        '\$',
                                        style: kTextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      '2000',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Equity Point Real Estate',
                              style: kTextStyle.copyWith(fontSize: 18.0),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1640 winifred way, Richmond',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Property ID: 81265',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kMainColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Invite to Apply',
                                    style: kTextStyle.copyWith(
                                        color: kMainColor, fontSize: 12.0),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kCircleColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Assign to Tenant',
                                    style: kTextStyle.copyWith(
                                        color: kCircleColor, fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0,),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage('images/property.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                padding: const EdgeInsets.only(right: 4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: kCircleColor,
                                      radius: 10.0,
                                      child: Text(
                                        '\$',
                                        style: kTextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      '2000',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Equity Point Real Estate',
                              style: kTextStyle.copyWith(fontSize: 18.0),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1640 winifred way, Richmond',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Property ID: 81265',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kMainColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Invite to Apply',
                                    style: kTextStyle.copyWith(
                                        color: kMainColor, fontSize: 12.0),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kCircleColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Assign to Tenant',
                                    style: kTextStyle.copyWith(
                                        color: kCircleColor, fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0,),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage('images/property.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                padding: const EdgeInsets.only(right: 4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: kCircleColor,
                                      radius: 10.0,
                                      child: Text(
                                        '\$',
                                        style: kTextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      '2000',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Equity Point Real Estate',
                              style: kTextStyle.copyWith(fontSize: 18.0),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1640 winifred way, Richmond',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Property ID: 81265',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kMainColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Invite to Apply',
                                    style: kTextStyle.copyWith(
                                        color: kMainColor, fontSize: 12.0),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kCircleColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Assign to Tenant',
                                    style: kTextStyle.copyWith(
                                        color: kCircleColor, fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0,),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage('images/property.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                padding: const EdgeInsets.only(right: 4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: kCircleColor,
                                      radius: 10.0,
                                      child: Text(
                                        '\$',
                                        style: kTextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      '2000',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Equity Point Real Estate',
                              style: kTextStyle.copyWith(fontSize: 18.0),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1640 winifred way, Richmond',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Property ID: 81265',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kMainColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Invite to Apply',
                                    style: kTextStyle.copyWith(
                                        color: kMainColor, fontSize: 12.0),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: kCircleColor.withOpacity(0.1),
                                  ),
                                  child: Text(
                                    'Assign to Tenant',
                                    style: kTextStyle.copyWith(
                                        color: kCircleColor, fontSize: 12.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

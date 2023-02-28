import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../constant.dart';

class TenantDetails extends StatefulWidget {
  const TenantDetails({Key? key}) : super(key: key);

  @override
  _TenantDetailsState createState() => _TenantDetailsState();
}

class _TenantDetailsState extends State<TenantDetails> {
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
              width: context.width(),
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
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tenant Details',
                          style: kTextStyle.copyWith(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Divider(
                          color: kGreyTextColor.withOpacity(0.1),
                          thickness: 2.0,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Email Address',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              'example@exaple.com',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        Divider(
                          color: kGreyTextColor.withOpacity(0.1),
                          thickness: 2.0,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Phone Number',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              '+880 17657 432211',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        Divider(
                          color: kGreyTextColor.withOpacity(0.1),
                          thickness: 2.0,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Address',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              '1640 winifred way',
                              maxLines: 2,
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        Divider(
                          color: kGreyTextColor.withOpacity(0.1),
                          thickness: 2.0,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Gender',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              'Male',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        Divider(
                          color: kGreyTextColor.withOpacity(0.1),
                          thickness: 2.0,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Unit',
                              style: kTextStyle.copyWith(fontSize: 16.0),
                            ),
                            Text(
                              '2',
                              style: kTextStyle.copyWith(
                                  color: kGreyTextColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                        Divider(
                          color: kGreyTextColor.withOpacity(0.1),
                          thickness: 2.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: context.width(),
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      color: kDarkWhite,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Current Lease',
                                style: kTextStyle.copyWith(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                                child: ButtonGlobalWithoutIcon(
                                    buttontext: 'Add New Lease',
                                    buttonDecoration: kButtonDecoration
                                        .copyWith(color: kMainColor),
                                    onPressed: () {}, buttonTextColor: Colors.white,)),
                          ],
                        ),
                        Divider(
                          color: kGreyTextColor.withOpacity(0.1),
                          thickness: 2.0,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Current Lease',style: kTextStyle,),
                                  Text('Month-To-Month',style: kTextStyle.copyWith(color: kGreyTextColor),),
                                ],
                              ),
                              const SizedBox(height: 20.0,),
                              LinearPercentIndicator(
                                barRadius: const Radius.circular(20.0),
                                lineHeight: 16.0,
                                animation: true,
                                animationDuration: 1000,
                                restartAnimation: true,
                                percent: 0.7,
                                backgroundColor: kCircleColor,
                                progressColor: kMainColor,
                              ),
                              const SizedBox(height: 20.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text('Rent Paid',style: kTextStyle.copyWith(color: kMainColor),),
                                      Text('\$1500',style: kTextStyle.copyWith(fontSize: 18.0,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Rent Due',style: kTextStyle.copyWith(color: kCircleColor),),
                                      Text('\$500',style: kTextStyle.copyWith(fontSize: 18.0,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Documents',
                                style: kTextStyle.copyWith(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                                child: ButtonGlobalWithoutIcon(
                                  buttontext: 'Add New Docs',
                                  buttonDecoration: kButtonDecoration
                                      .copyWith(color: kMainColor),
                                  onPressed: () {}, buttonTextColor: Colors.white,)),
                          ],
                        ),
                        Divider(
                          color: kGreyTextColor.withOpacity(0.1),
                          thickness: 2.0,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white
                          ),
                          child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(10.0),
                              color: kCircleColor.withOpacity(0.1),
                              child: const Icon(Icons.text_snippet_outlined,color: kCircleColor,),
                            ),
                            title: Text("Driving_License.pdf",style: kTextStyle,),
                            trailing: const Icon(Icons.download,color: kGreyTextColor,),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white
                          ),
                          child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(10.0),
                              color: kCircleColor.withOpacity(0.1),
                              child: const Icon(Icons.text_snippet_outlined,color: kCircleColor,),
                            ),
                            title: Text("Paystubs.pdf",style: kTextStyle,),
                            trailing: const Icon(Icons.download,color: kGreyTextColor,),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ButtonGlobal(
                          buttontext: 'Manage Lease',
                          buttonDecoration: kButtonDecoration
                              .copyWith(color: kMainColor),
                          onPressed: () {},)

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

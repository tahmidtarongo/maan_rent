import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Tenants/add_new_tenant.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class LeaseDetails extends StatefulWidget {
  const LeaseDetails({Key? key}) : super(key: key);

  @override
  _LeaseDetailsState createState() => _LeaseDetailsState();
}

class _LeaseDetailsState extends State<LeaseDetails> {
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
                color: kDarkWhite,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
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
                                'Tenants',
                                style: kTextStyle.copyWith(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                                child: ButtonGlobalWithoutIcon(
                                  buttontext: 'Add New Tenant',
                                  buttonDecoration: kButtonDecoration
                                      .copyWith(color: kMainColor),
                                  onPressed: () {
                                    const AddNewTenants().launch(context);
                                  }, buttonTextColor: Colors.white,)),
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
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Image.asset(
                                  'images/profile.png',
                                ),
                                title: Text(
                                  'Sahidul Islam',
                                  style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  '1640 winifred way, Richmond',
                                  style: kTextStyle.copyWith(color: kGreyTextColor),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: kMainColor.withOpacity(0.1),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.remove_red_eye_outlined,color: kMainColor,),
                                        Text('View Tenant',style: kTextStyle.copyWith(color: kMainColor),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: kCircleColor.withOpacity(0.1),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.edit,color: kCircleColor,),
                                        Text('Edit Tenant',style: kTextStyle.copyWith(color: kCircleColor),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Documents',
                          style: kTextStyle.copyWith(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Divider(
                          color: kGreyTextColor.withOpacity(0.1),
                          thickness: 2.0,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text('Upload Your Document',style: kTextStyle.copyWith(color: kGreyTextColor),),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: context.width(),
                          padding: const EdgeInsets.all(40.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              const Icon(Icons.add_circle_outline,size: 25.0,color: kTitleColor,),
                              Text('Drag & Drop or Click to Upload',style: kTextStyle.copyWith(color: kGreyTextColor),),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Payments',
                                style: kTextStyle.copyWith(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                                child: ButtonGlobalWithoutIcon(
                                  buttontext: 'Add New Payment',
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
                          height: 10.0,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Image.asset(
                              'images/profile.png',
                            ),
                            title: Text(
                              'Sahidul Islam',
                              style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              '10 January, 2022',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),trailing: Text(
                            '\$2000',
                            style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Image.asset(
                              'images/profile.png',
                            ),
                            title: Text(
                              'Sahidul Islam',
                              style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              '10 January, 2022',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                            ),trailing: Text(
                            '\$2000',
                            style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
                          ),
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
    );
  }
}

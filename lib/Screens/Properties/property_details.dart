import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../constant.dart';

class PropertyDetails extends StatefulWidget {
  const PropertyDetails({Key? key}) : super(key: key);

  @override
  _PropertyDetailsState createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Properties Details',
          style: kTextStyle.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kMainColor,
        elevation: 0.0,
      ),
      bottomNavigationBar: Container(
        width: context.width(),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
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
                    border: Border.all(color: kCircleColor),
                    color: Colors.white
                  ),
                  child: Center(child: Text('Applicants',style: kTextStyle.copyWith(color: kCircleColor),)),
                ),
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
                      color: kMainColor
                  ),
                  child: Center(child: Text('Tenants',style: kTextStyle.copyWith(color: Colors.white),)),
                ),
              ),
            ),
          ],
        ),
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
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10.0,),
                        Image.asset('images/property.png',width: context.width(),height: 200.0,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Equity Point Real Estate',
                            style: kTextStyle.copyWith(fontSize: 18.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              const Icon(Icons.location_on_outlined,color: kMainColor,),
                              Text(
                                '1640 winifred way, Richmond',
                                style: kTextStyle.copyWith(color: kGreyTextColor),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Image.asset('images/bed.png'),
                                const SizedBox(height: 4.0,),
                                Text('2 Bedrooms',style: kTextStyle,),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('images/bath.png'),
                                const SizedBox(height: 4.0,),
                                Text('1 Bathrooms',style: kTextStyle,),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('images/family.png'),
                                const SizedBox(height: 4.0,),
                                Text('Single-Family',style: kTextStyle,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0,),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
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
                        Text('Rent Details',style: kTextStyle.copyWith(fontSize: 18.0),),
                        const Divider(
                          thickness: 1.0,
                          color: kBorderColorTextField,
                        ),
                        const SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Text('Rent',style: kTextStyle,),
                            const Spacer(),
                            Text('\$2000',style: kTextStyle,),
                          ],
                        ),
                        const SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Text('Deposit',style: kTextStyle.copyWith(color: kGreyTextColor),),
                            const Spacer(),
                            Text('\$500',style: kTextStyle.copyWith(color: kGreyTextColor),),
                          ],
                        ),
                        const SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Text('Available Date',style: kTextStyle.copyWith(color: kGreyTextColor),),
                            const Spacer(),
                            Text('01/05/2022',style: kTextStyle.copyWith(color: kGreyTextColor),),
                          ],
                        ),
                        const SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Text('Lease Terms',style: kTextStyle.copyWith(color: kGreyTextColor),),
                            const Spacer(),
                            Text('Monthly',style: kTextStyle.copyWith(color: kGreyTextColor),),
                          ],
                        ),
                        const SizedBox(height: 10.0,),
                        Text('Features',style: kTextStyle.copyWith(fontSize: 18.0),),
                        const Divider(
                          thickness: 1.0,
                          color: kBorderColorTextField,
                        ),
                        const SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Image.asset('images/pet.png'),
                            const SizedBox(width: 4.0,),
                            Text('No Pets Allowed',style: kTextStyle.copyWith(color: kGreyTextColor),),
                          ],
                        ),
                        const SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Image.asset('images/smoking.png'),
                            const SizedBox(width: 4.0,),
                            Text('Smoking is No Allowed',style: kTextStyle.copyWith(color: kGreyTextColor),),
                          ],
                        ),
                        const SizedBox(height: 10.0,),
                        Text('Description',style: kTextStyle.copyWith(fontSize: 18.0),),
                        const Divider(
                          thickness: 1.0,
                          color: kBorderColorTextField,
                        ),
                        const SizedBox(height: 10.0,),
                        Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',maxLines: 10,style: kTextStyle.copyWith(color: kGreyTextColor),),
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

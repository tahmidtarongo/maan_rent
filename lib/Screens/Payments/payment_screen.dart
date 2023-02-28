import 'package:flutter/material.dart';
import 'package:maan_rent/Screens/Payments/empty_payment.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        appBar: AppBar(
          title: Text(
            'Payments',
            style: kTextStyle.copyWith(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: kMainColor,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: kDarkWhite,
                  ),
                  padding: const EdgeInsets.only(top: 30),
                  width: context.width(),
                  child: Column(
                    children: [
                      Text(
                        'Total Balance',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        '\$4,000,675.00',
                        style: kTextStyle.copyWith(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(20.0),
                        width: context.width(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30.0,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: kCircleColor,
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          '\$40,000',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0),
                                        ),
                                        const SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(
                                          'Rent',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Collected',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: const Color(0xFFB37EF8),
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          '\$35,000',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0),
                                        ),
                                        const SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(
                                          'Rent',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Due',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: const Color(0xFF54B8FF),
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          '\$20,000',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0),
                                        ),
                                        const SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(
                                          'Rent',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Expenses',
                                          style: kTextStyle.copyWith(
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'Transactions',
                              style: kTextStyle.copyWith(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              color: kGreyTextColor.withOpacity(0.1),
                              thickness: 2.0,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
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
                                    style: kTextStyle.copyWith(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    '10 January, 2022',
                                    style: kTextStyle.copyWith(
                                        color: kGreyTextColor),
                                  ),
                                  trailing: Text(
                                    '\$2000',
                                    style: kTextStyle.copyWith(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
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
                                    style: kTextStyle.copyWith(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    '10 January, 2022',
                                    style: kTextStyle.copyWith(
                                        color: kGreyTextColor),
                                  ),
                                  trailing: Text(
                                    '\$2000',
                                    style: kTextStyle.copyWith(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
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
                                    style: kTextStyle.copyWith(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    '10 January, 2022',
                                    style: kTextStyle.copyWith(
                                        color: kGreyTextColor),
                                  ),
                                  trailing: Text(
                                    '\$2000',
                                    style: kTextStyle.copyWith(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Show More ',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                                const Icon(Icons.add, color: kGreyTextColor),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Withdraw',
                              style: kTextStyle.copyWith(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              color: kGreyTextColor.withOpacity(0.1),
                              thickness: 2.0,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                ),
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: Image.asset(
                                    'images/card.png',
                                  ),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Sahidul Islam',
                                        style: kTextStyle.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '\$2000',
                                        style: kTextStyle.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '10 January, 2022',
                                        style: kTextStyle.copyWith(
                                            color: kGreyTextColor),
                                      ),
                                      Text(
                                        'Paid',
                                        style: kTextStyle.copyWith(
                                            color: kGreyTextColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                ),
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: Image.asset(
                                    'images/bank.png',
                                  ),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Sahidul Islam',
                                        style: kTextStyle.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '\$2000',
                                        style: kTextStyle.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '10 January, 2022',
                                        style: kTextStyle.copyWith(
                                            color: kGreyTextColor),
                                      ),
                                      Text(
                                        'Paid',
                                        style: kTextStyle.copyWith(
                                            color: kGreyTextColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                ),
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: Image.asset(
                                    'images/usbank.png',
                                  ),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Sahidul Islam',
                                        style: kTextStyle.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '\$2000',
                                        style: kTextStyle.copyWith(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '10 January, 2022',
                                        style: kTextStyle.copyWith(
                                            color: kGreyTextColor),
                                      ),
                                      Text(
                                        'Paid',
                                        style: kTextStyle.copyWith(
                                            color: kGreyTextColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextButton(
                              onPressed: () => const EmptyPayment().launch(context),
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: kCircleColor,
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 4.0,),
                                      Text(
                                        'Add New payment',
                                        style: kTextStyle.copyWith(
                                            fontSize: 18.0,
                                            color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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

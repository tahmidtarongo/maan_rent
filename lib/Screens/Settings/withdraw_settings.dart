import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Settings/add_bank_account.dart';
import 'package:maan_rent/Screens/Settings/withdraw_request.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';


class WithdrawSettings extends StatefulWidget {
  const WithdrawSettings({Key? key}) : super(key: key);

  @override
  _WithdrawSettingsState createState() => _WithdrawSettingsState();
}

class _WithdrawSettingsState extends State<WithdrawSettings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        appBar: AppBar(
          title: Text(
            'Withdraw Settings',
            style: kTextStyle.copyWith(color: Colors.white),
          ),
          centerTitle: true,
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
                        '\$4,000.00',
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
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Withdraw',
                                    style: kTextStyle.copyWith(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                    child: ButtonGlobalWithoutIcon(
                                      buttontext: 'Add Account',
                                      buttonDecoration: kButtonDecoration
                                          .copyWith(color: kMainColor),
                                      onPressed: () {
                                        const AddBankAccount().launch(context);
                                      }, buttonTextColor: Colors.white,)),
                              ],
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
                                    'images/bank.png',
                                  ),
                                  title: Text(
                                    'Santander Bank',
                                    style: kTextStyle.copyWith(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    '**** **** ***** 5263',
                                    style: kTextStyle.copyWith(
                                        color: kGreyTextColor),
                                  ),
                                  trailing: const Icon(Icons.arrow_forward_ios),
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
                                    'images/paypal.png',
                                  ),
                                  title: Text(
                                    'Paypal',
                                    style: kTextStyle.copyWith(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    '**** **** ***** 5263',
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
                              'History',
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
                                    'images/bank.png',
                                  ),
                                  title: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Santander Bank',
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
                                    'images/paypal.png',
                                  ),
                                  title: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Paypal',
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
                            ButtonGlobal(buttontext: 'Request a withdraw', buttonDecoration: kButtonDecoration.copyWith(color: kMainColor), onPressed: (){
                              const WithdrawRequest().launch(context);
                            }),
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

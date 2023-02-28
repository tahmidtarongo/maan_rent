import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';


class AddBankAccount extends StatefulWidget {
  const AddBankAccount({Key? key}) : super(key: key);

  @override
  _AddBankAccountState createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {

  int? _propertySelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Add Bank Account',
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
            const SizedBox(height: 20.0,),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10.0),
              width: context.width(),
              height: context.height(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Account Type',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _propertySelected,
                            activeColor: kMainColor,
                            onChanged: (value) {
                              setState(() {
                                _propertySelected = value as int;
                              });
                            },
                          ),
                          const Text("Individual"),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: _propertySelected,
                            activeColor: kMainColor,
                            onChanged: (value) {
                              setState(() {
                                _propertySelected = value as int;
                              });
                            },
                          ),
                          const Text("Company"),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      decoration: const InputDecoration(
                        labelText: 'Account holder’s Full Name',
                        hintText: 'Maan Theme',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.PHONE,
                      decoration: const InputDecoration(
                        labelText: 'Routing Number',
                        hintText: '554575',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.PHONE,
                      decoration: const InputDecoration(
                        labelText: 'Account Number',
                        hintText: '43756785673787',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      decoration: const InputDecoration(
                        labelText: 'Re-Enter Account Number',
                        hintText: '43756785673787',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

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
                                border: Border.all(color: kCircleColor),
                                color: Colors.white
                            ),
                            child: Center(child: Text('Cancel',style: kTextStyle.copyWith(color: kCircleColor),)),
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
                            child: Center(child: Text('Add Account',style: kTextStyle.copyWith(color: Colors.white),)),
                          ),
                        ),
                      ),
                    ],
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

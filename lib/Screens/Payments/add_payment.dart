import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Payments/payment_list.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';


class AddPayment extends StatefulWidget {
  const AddPayment({Key? key}) : super(key: key);

  @override
  _AddPaymentState createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();
  bool isMonth = false;

  @override
  void dispose() {
    startDateController.dispose();
    endDateController.dispose();
    super.dispose();
  }

  List<String> data = [
    "1640 winifred Way",
    "Equity Point Real Estate",
    "1640 winifred Ways",
    "1640 winifred Wayz",
    "Equity Point Real Estatev",
    "1640 winifred Wayx",
    "1640 winifred Wayc"
  ];
  List<String> tenant = ["Sahidul Islam", "Ibne Riead", "John Doe"];

  String tenantName = "Sahidul Islam";
  String propertyType = "1640 winifred Way";

  DropdownButton<String> getType() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String type in data) {
      var item = DropdownMenuItem(
        child: Text(type),
        value: type,
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: propertyType,
      onChanged: (value) {
        setState(() {
          propertyType = value!;
        });
      },
    );
  }

  DropdownButton<String> getTenant() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String type in tenant) {
      var item = DropdownMenuItem(
        child: Text(type),
        value: type,
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: tenantName,
      onChanged: (value) {
        setState(() {
          tenantName = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Add Payment',
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
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
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
                children: [
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 60.0,
                      child: FormField(
                        builder: (FormFieldState<dynamic> field) {
                          return InputDecorator(
                            decoration: InputDecoration(
                                floatingLabelBehavior:
                                FloatingLabelBehavior.always,
                                labelText: 'Select Tenant',
                                labelStyle: kTextStyle,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            child:
                            DropdownButtonHideUnderline(child: getTenant()),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 60.0,
                      child: FormField(
                        builder: (FormFieldState<dynamic> field) {
                          return InputDecorator(
                            decoration: InputDecoration(
                                floatingLabelBehavior:
                                FloatingLabelBehavior.always,
                                labelText: 'Select Property',
                                labelStyle: kTextStyle,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            child:
                            DropdownButtonHideUnderline(child: getType()),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      decoration: const InputDecoration(
                        labelText: 'Unit',
                        hintText: '2',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      decoration: const InputDecoration(
                        labelText: 'Lease Number',
                        hintText: '45365',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.PHONE,
                      decoration: const InputDecoration(
                        labelText: 'Monthly Rent',
                        prefix: Icon(
                          Icons.attach_money,
                          color: kTitleColor,
                        ),
                        hintText: '2000',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      decoration: const InputDecoration(
                        labelText: 'Docs',
                        hintText: 'Drag and Drop',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            readOnly: true,
                            onTap: () async {
                              var date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              startDateController.text =
                                  date.toString().substring(0, 10);
                            },
                            controller: startDateController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                floatingLabelBehavior:
                                FloatingLabelBehavior.always,
                                suffixIcon: Icon(
                                  Icons.date_range_rounded,
                                  color: kGreyTextColor,
                                ),
                                labelText: 'Start Date(Optional)',
                                hintText: '11/09/2021'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            readOnly: true,
                            onTap: () async {
                              var date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              endDateController.text =
                                  date.toString().substring(0, 10);
                            },
                            controller: endDateController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                floatingLabelBehavior:
                                FloatingLabelBehavior.always,
                                suffixIcon: Icon(
                                  Icons.date_range_rounded,
                                  color: kGreyTextColor,
                                ),
                                labelText: 'End Date(Optional)',
                                hintText: '11/09/2021'),
                          ),
                        ),
                      ).visible(!isMonth),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: kMainColor,
                          checkColor: Colors.white,
                          value: isMonth,
                          onChanged: (value) {
                            setState(() {
                              isMonth = value!;
                            });
                          }),
                      Text(
                        'No End Date',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                    ],
                  ),
                  ButtonGlobal(
                      buttontext: 'Save',
                      buttonDecoration:
                      kButtonDecoration.copyWith(color: kMainColor),
                      onPressed: () {
                        const PaymentList().launch(context);
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

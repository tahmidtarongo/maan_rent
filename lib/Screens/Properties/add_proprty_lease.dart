import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Properties/add_amenities.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../constant.dart';

class AddPropertyLease extends StatefulWidget {
  const AddPropertyLease({Key? key}) : super(key: key);

  @override
  _AddPropertyLeaseState createState() => _AddPropertyLeaseState();
}

class _AddPropertyLeaseState extends State<AddPropertyLease> {

  final dateController = TextEditingController();
  int? _smokingSelected;
  int? _petSelected;
  int? _occupancySelected;
  // ignore: unused_field
  String _smokingVal = "";

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        appBar: AppBar(
          title: Text('Add properties',style: kTextStyle.copyWith(color: Colors.white),),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: kMainColor,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0,),
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
                      const SizedBox(height: 10.0,),
                      Text('Get Started Managing Your Property',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,fontSize: 16.0),),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 30.0,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Lease Term',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),),
                            ),
                            Padding(
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
                                  dateController.text =
                                      date.toString().substring(0, 10);
                                },
                                controller: dateController,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                    suffixIcon: Icon(
                                      Icons.date_range_rounded,
                                      color: kGreyTextColor,
                                    ),
                                    labelText: 'Date Available(Optional)',
                                    hintText: '11/09/2021'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Rent & Deposit',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: AppTextField(
                                      textFieldType: TextFieldType.NAME,
                                      decoration: const InputDecoration(
                                        labelText: 'Rent Amount',
                                        hintText: '2000',
                                        prefixIcon: Icon(Icons.attach_money_outlined,color: kTitleColor,),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: AppTextField(
                                      textFieldType: TextFieldType.NAME,
                                      decoration: const InputDecoration(
                                        labelText: 'Security',
                                        hintText: '500',
                                        prefixIcon: Icon(Icons.attach_money_outlined,color: kTitleColor,),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Allow Smoking',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),),
                                  Text('Do you allow smoking at this property?',style: kTextStyle.copyWith(color: kGreyTextColor,fontSize: 14.0),),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: _smokingSelected,
                                      activeColor: kMainColor,
                                      onChanged: (value) {
                                        setState(() {
                                          _smokingSelected = value as int;
                                          _smokingVal = 'Yes';
                                        });
                                      },
                                    ),
                                    const Text("Yes"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 2,
                                      groupValue: _smokingSelected,
                                      activeColor: kMainColor,
                                      onChanged: (value) {
                                        setState(() {
                                          _smokingSelected = value as int;
                                          _smokingVal = 'No';
                                        });
                                      },
                                    ),
                                    const Text("No"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 3,
                                      groupValue: _smokingSelected,
                                      activeColor: kMainColor,
                                      onChanged: (value) {
                                        setState(() {
                                          _smokingSelected = value as int;
                                          _smokingVal = 'Outside Only';
                                        });
                                      },
                                    ),
                                    const Text("Outside Only"),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Pets',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),),
                                  Text('Do you allow any pets?',style: kTextStyle.copyWith(color: kGreyTextColor,fontSize: 14.0),),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: _petSelected,
                                      activeColor: kMainColor,
                                      onChanged: (value) {
                                        setState(() {
                                          _petSelected = value as int;
                                          _smokingVal = 'Yes';
                                        });
                                      },
                                    ),
                                    const Text("Yes"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 2,
                                      groupValue: _petSelected,
                                      activeColor: kMainColor,
                                      onChanged: (value) {
                                        setState(() {
                                          _petSelected = value as int;
                                          _smokingVal = 'No';
                                        });
                                      },
                                    ),
                                    const Text("No"),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Occupancy Limits',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),),
                                  Text('Do you have an occupancy limit?',style: kTextStyle.copyWith(color: kGreyTextColor,fontSize: 14.0),),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: _occupancySelected,
                                      activeColor: kMainColor,
                                      onChanged: (value) {
                                        setState(() {
                                          _occupancySelected = value as int;
                                          _smokingVal = 'Yes';
                                        });
                                      },
                                    ),
                                    const Text("Yes"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 2,
                                      groupValue: _occupancySelected,
                                      activeColor: kMainColor,
                                      onChanged: (value) {
                                        setState(() {
                                          _occupancySelected = value as int;
                                          _smokingVal = 'No';
                                        });
                                      },
                                    ),
                                    const Text("No"),
                                  ],
                                ),
                              ],
                            ),
                            ButtonGlobal(
                              buttontext: 'Next',
                              buttonDecoration: kButtonDecoration,
                              onPressed: (){
                                const AddAmenities().launch(context);
                              },
                            ),
                            const SizedBox(height: 30.0,),
                          ],
                        ),
                      )
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

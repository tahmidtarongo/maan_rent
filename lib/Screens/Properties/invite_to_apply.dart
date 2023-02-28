import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class InviteToApply extends StatefulWidget {
  const InviteToApply({Key? key}) : super(key: key);

  @override
  _InviteToApplyState createState() => _InviteToApplyState();
}

class _InviteToApplyState extends State<InviteToApply> {


  List<String> data = [
    "1640 winifred Way",
    "Equity Point Real Estate",
    "1640 winifred Ways",
    "1640 winifred Wayz",
    "Equity Point Real Estatev",
    "1640 winifred Wayx",
    "1640 winifred Wayc"
  ];
  String propertyType = "1640 winifred Way";
  int? _propertySelected;

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Application Form',
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
                color: kDarkWhite,
              ),
              padding: const EdgeInsets.only(top: 20),
              width: context.width(),
              child: Column(
                children: [
                  Text('Invite Renter To Apply',style: kTextStyle.copyWith(fontWeight: FontWeight.bold,fontSize: 16.0),),
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
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            decoration: const InputDecoration(
                              labelText: 'First Name',
                              hintText: 'Maan',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            decoration: const InputDecoration(
                              labelText: 'Last Name',
                              hintText: 'Theme',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.EMAIL,
                            decoration: const InputDecoration(
                              labelText: 'Renter\'s Email',
                              hintText: 'example@example.com',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            decoration: const InputDecoration(
                              labelText: 'Phone Number',
                              hintText: 'Enter your phone number',
                              border: OutlineInputBorder(),
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
                                const Text("Email & Text"),
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
                                const Text("Email"),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _propertySelected,
                                  activeColor: kMainColor,
                                  onChanged: (value) {
                                    setState(() {
                                      _propertySelected = value as int;
                                    });
                                  },
                                ),
                                const Text("Text"),
                              ],
                            ),
                          ],
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
                                  child: Center(child: Text('Invite',style: kTextStyle.copyWith(color: Colors.white),)),
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
          ],
        ),
      ),
    );  }
}

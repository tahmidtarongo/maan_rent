import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Tenants/tenant_list.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';


class AddCoSigner extends StatefulWidget {
  const AddCoSigner({Key? key}) : super(key: key);

  @override
  _AddCoSignerState createState() => _AddCoSignerState();
}

class _AddCoSignerState extends State<AddCoSigner> {
  List<String> data = [
    "Single-Family",
    "Apartment",
    "Condo",
    "Townhouse",
    "Co-op",
    "Multi-Family",
    "Other"
  ];
  String propertyType = "Single-Family";
  String tenantGender = "Male";
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
  DropdownButton<String> getGender() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String type in gender) {
      var item = DropdownMenuItem(
        child: Text(type),
        value: type,
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: tenantGender,
      onChanged: (value) {
        setState(() {
          tenantGender = value!;
        });
      },
    );
  }
  final dateController = TextEditingController();
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
          title: Text('Add Co-Signer',style: kTextStyle.copyWith(color: Colors.white),),
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
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Tenant Image (Optional)',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DottedBorderWidget(
                        color: kGreyTextColor,
                        child: const SizedBox(
                          height: 100,
                          width: 100,
                          child: Icon(Icons.camera_alt_outlined,color: kGreyTextColor,size: 50.0,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        decoration: const InputDecoration(
                          labelText: 'First Name',
                          hintText: 'Enter First Name',
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
                          hintText: 'Enter Last Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AppTextField(
                        textFieldType: TextFieldType.EMAIL,
                        decoration: const InputDecoration(
                          labelText: 'Email Address',
                          hintText: 'Enter Email Address',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AppTextField(
                        textFieldType: TextFieldType.EMAIL,
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          hintText: 'Enter Phone Address',
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
                                  labelText: 'Select Type',
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
                          labelText: 'Docs',
                          hintText: 'Click to Upload',
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
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              height: 60.0,
                              child: FormField(
                                builder: (FormFieldState<dynamic> field) {
                                  return InputDecorator(
                                    decoration: InputDecoration(
                                        floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                        labelText: 'Select Gender',
                                        labelStyle: kTextStyle,
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5.0))),
                                    child:
                                    DropdownButtonHideUnderline(child: getGender()),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ButtonGlobal(
                      buttontext: 'Save',
                      buttonDecoration: kButtonDecoration,
                      onPressed: (){
                        const TenantList().launch(context);
                      },
                    ),
                    const SizedBox(height: 30.0,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

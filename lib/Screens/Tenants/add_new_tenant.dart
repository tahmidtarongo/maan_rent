import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Tenants/add_co_signer.dart';
import 'package:maan_rent/Screens/Tenants/tenant_list.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class AddNewTenants extends StatefulWidget {
  const AddNewTenants({Key? key}) : super(key: key);

  @override
  _AddNewTenantsState createState() => _AddNewTenantsState();
}

class _AddNewTenantsState extends State<AddNewTenants> {
  int? _companySelected;
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
          title: Text('Add Tenant',style: kTextStyle.copyWith(color: Colors.white),),
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
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: AppTextField(
                              textFieldType: TextFieldType.NAME,
                              decoration: const InputDecoration(
                                labelText: 'Unit Number',
                                hintText: 'Select Unit',
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
                                labelText: 'Docs',
                                hintText: 'Click to Upload',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        maxLines: 20,
                        decoration: const InputDecoration(
                          labelText: 'Company Name(Optional)',
                          hintText: 'Enter Company Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Display as a Company',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),),
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
                              groupValue: _companySelected,
                              activeColor: kMainColor,
                              onChanged: (value) {
                                setState(() {
                                  _companySelected = value as int;

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
                              groupValue: _companySelected,
                              activeColor: kMainColor,
                              onChanged: (value) {
                                setState(() {
                                  _companySelected = value as int;
                                });
                              },
                            ),
                            const Text("No"),
                          ],
                        ),
                      ],
                    ),
                    ButtonGlobal(
                      buttontext: 'Save',
                      buttonDecoration: kButtonDecoration,
                      onPressed: (){
                        showInDialog(context, builder: (context) => Container(
                          color: Colors.white,
                          height: 150.0,
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text('Do you want to add a co-signer',style: kTextStyle,textAlign: TextAlign.center,),
                              const SizedBox(height: 20.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 60.0,
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4.0),
                                        color: kMainColor
                                    ),
                                    child: Center(child: Text('Yes',style: kTextStyle.copyWith(color: Colors.white),)),
                                  ).onTap((){
                                    const AddCoSigner().launch(context);
                                  }),
                                  Container(
                                    width: 60.0,
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: kCircleColor.withOpacity(0.1),
                                    ),
                                    child: Center(child: Text('No',style: kTextStyle.copyWith(color: kCircleColor),)),
                                  ).onTap((){
                                    const TenantList().launch(context);
                                  }),
                                ],
                              ),
                            ],
                          ),
                        ), dialogAnimation: DialogAnimation.SLIDE_BOTTOM_TOP);
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

import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Properties/add_proprty_lease.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../constant.dart';

class AddNewProperties extends StatefulWidget {
  const AddNewProperties({Key? key}) : super(key: key);

  @override
  _AddNewPropertiesState createState() => _AddNewPropertiesState();
}

class _AddNewPropertiesState extends State<AddNewProperties> {

  PageController pageController = PageController();

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
                          children: [
                            const SizedBox(height: 30.0,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: AppTextField(
                                textFieldType: TextFieldType.NAME,
                                decoration: const InputDecoration(
                                  labelText: 'Property Name',
                                  hintText: 'Enter Property Name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: AppTextField(
                                textFieldType: TextFieldType.ADDRESS,
                                decoration: const InputDecoration(
                                  labelText: 'Address',
                                  hintText: 'Enter Property Address',
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
                                      decoration: const InputDecoration(
                                        labelText: 'City',
                                        hintText: 'Enter your city',
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
                                        labelText: 'State',
                                        hintText: 'Enter Property state',
                                        border: OutlineInputBorder(),
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
                                        labelText: 'Zip',
                                        hintText: 'Enter your zip',
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
                                        labelText: 'Unit(Optional)',
                                        hintText: 'Enter Property unit',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                                      decoration: const InputDecoration(
                                        labelText: 'Bedrooms',
                                        hintText: '2',
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
                                        labelText: 'Bathrooms',
                                        hintText: '1',
                                        border: OutlineInputBorder(),
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
                                        labelText: 'Area/Size',
                                        hintText: '570 sq ft',
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
                                        labelText: 'Rent Amount',
                                        prefixIcon: Icon(Icons.attach_money_outlined,color: kTitleColor,),
                                        hintText: '2000',
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
                                  labelText: 'Description',
                                  hintText: 'Enter Property Description',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            ButtonGlobal(
                              buttontext: 'Next',
                              buttonDecoration: kButtonDecoration,
                              onPressed: (){
                                const AddPropertyLease().launch(context);
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






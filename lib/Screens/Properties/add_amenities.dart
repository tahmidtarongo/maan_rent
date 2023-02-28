import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Properties/property_list.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class AddAmenities extends StatefulWidget {
  const AddAmenities({Key? key}) : super(key: key);

  @override
  _AddAmenitiesState createState() => _AddAmenitiesState();
}

class _AddAmenitiesState extends State<AddAmenities> {
  List<String> utilities = [
    "Gas",
    "Cable",
    "Water",
    "Internet",
    "TV",
    "Sewage",
    "Electricity",
    "Garbage",
    "Parking",
    "Washer"
  ];
  List<String> appliances = [
    "Refrigerator",
    "Dryer",
    "Microwave",
    "Dishwasher",
    "Disposal",
    "Washer"
  ];
  List<String> floor = [
    "Carpet",
    "Tile",
    "Hardwood",
    "Slate",
    "Laminate",
    "Softwood",
    "Vinyl"
  ];
  List<String> cooling = [
    "None",
    "Wall",
    "Solar",
    "Geothermal",
    "Central",
    "Evaporative",
    "Other"
  ];
  List<String> heating = [
    "Radiant",
    "Wall",
    "Stove",
    "Baseboard",
    "Forced Air",
    "Others"
  ];
  List<String> other = [
    "Furnished",
    "Garage",
    "Alarm System",
    "Cable-Ready",
    "Accessibility",
    "Parking",
    "On-Site laundry",
    "Intercom"
  ];
  List<String> userChecked = [];

  void _onSelected(bool selected, String dataName) {
    if (selected == true) {
      setState(() {
        userChecked.add(dataName);
      });
    } else {
      setState(() {
        userChecked.remove(dataName);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        appBar: AppBar(
          title: Text(
            'Add properties',
            style: kTextStyle.copyWith(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: kMainColor,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
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
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Get Started Managing Your Property',
                        style: kTextStyle.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
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
                            const SizedBox(
                              height: 30.0,
                            ),
                            //Utilities Paid By Landlord
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                              child: Text(
                                'Utilities Paid By Landlord',
                                style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                childAspectRatio: 4.3,
                                crossAxisCount: 2,
                                children: List.generate(
                                  utilities.length,
                                  (index) => CheckboxListTile(
                                    controlAffinity: ListTileControlAffinity.leading,
                                    title: Text(utilities[index],style: kTextStyle.copyWith(color: userChecked.contains(utilities[index])? kTitleColor : kGreyTextColor),),
                                    contentPadding: EdgeInsets.zero,
                                    checkColor: Colors.white,
                                    activeColor: kMainColor,
                                    value:
                                        userChecked.contains(utilities[index]),
                                    onChanged: (val) {
                                      _onSelected(val!, utilities[index]);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            //Appliances
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                              child: Text(
                                'Appliances',
                                style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                childAspectRatio: 4.3,
                                crossAxisCount: 2,
                                children: List.generate(
                                  appliances.length,
                                      (index) => CheckboxListTile(
                                    controlAffinity: ListTileControlAffinity.leading,
                                    title: Text(appliances[index],style: kTextStyle.copyWith(color: userChecked.contains(appliances[index])? kTitleColor : kGreyTextColor),),
                                    contentPadding: EdgeInsets.zero,
                                    checkColor: Colors.white,
                                    activeColor: kMainColor,
                                    value:
                                    userChecked.contains(appliances[index]),
                                    onChanged: (val) {
                                      _onSelected(val!, appliances[index]);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            //Floor Coverings
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                              child: Text(
                                'Floor Coverings',
                                style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                childAspectRatio: 4.3,
                                crossAxisCount: 2,
                                children: List.generate(
                                  floor.length,
                                      (index) => CheckboxListTile(
                                    controlAffinity: ListTileControlAffinity.leading,
                                    title: Text(floor[index],style: kTextStyle.copyWith(color: userChecked.contains(floor[index])? kTitleColor : kGreyTextColor),),
                                    contentPadding: EdgeInsets.zero,
                                    checkColor: Colors.white,
                                    activeColor: kMainColor,
                                    value:
                                    userChecked.contains(floor[index]),
                                    onChanged: (val) {
                                      _onSelected(val!, floor[index]);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            //Cooling Systems
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                              child: Text(
                                'Cooling Systems',
                                style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                childAspectRatio: 4.3,
                                crossAxisCount: 2,
                                children: List.generate(
                                  cooling.length,
                                      (index) => CheckboxListTile(
                                    controlAffinity: ListTileControlAffinity.leading,
                                    title: Text(cooling[index],style: kTextStyle.copyWith(color: userChecked.contains(cooling[index])? kTitleColor : kGreyTextColor),),
                                    contentPadding: EdgeInsets.zero,
                                    checkColor: Colors.white,
                                    activeColor: kMainColor,
                                    value:
                                    userChecked.contains(cooling[index]),
                                    onChanged: (val) {
                                      _onSelected(val!, cooling[index]);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            //Heating Systems
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                              child: Text(
                                'Heating Systems',
                                style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                childAspectRatio: 4.3,
                                crossAxisCount: 2,
                                children: List.generate(
                                  heating.length,
                                      (index) => CheckboxListTile(
                                    controlAffinity: ListTileControlAffinity.leading,
                                    title: Text(heating[index],style: kTextStyle.copyWith(color: userChecked.contains(heating[index])? kTitleColor : kGreyTextColor),),
                                    contentPadding: EdgeInsets.zero,
                                    checkColor: Colors.white,
                                    activeColor: kMainColor,
                                    value:
                                    userChecked.contains(heating[index]),
                                    onChanged: (val) {
                                      _onSelected(val!, heating[index]);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            //Other
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                              child: Text(
                                'Other',
                                style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                childAspectRatio: 4.3,
                                crossAxisCount: 2,
                                children: List.generate(
                                  other.length,
                                      (index) => CheckboxListTile(
                                    controlAffinity: ListTileControlAffinity.leading,
                                    title: Text(other[index],style: kTextStyle.copyWith(color: userChecked.contains(other[index])? kTitleColor : kGreyTextColor),),
                                    contentPadding: EdgeInsets.zero,
                                    checkColor: Colors.white,
                                    activeColor: kMainColor,
                                    value:
                                    userChecked.contains(other[index]),
                                    onChanged: (val) {
                                      _onSelected(val!, other[index]);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            ButtonGlobal(
                              buttontext: 'Save',
                              buttonDecoration: kButtonDecoration,
                              onPressed: () {
                                const PropertyList().launch(context);
                              },
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
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

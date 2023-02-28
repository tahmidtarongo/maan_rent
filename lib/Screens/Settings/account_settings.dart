import 'package:flutter/material.dart';
import 'package:maan_rent/GlobalComponents/button_global.dart';
import 'package:maan_rent/Screens/Settings/change_password.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';


class AccountSettings extends StatefulWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {

  bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'My Account',
          style: kTextStyle.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kMainColor,
        elevation: 0.0,
        actions: [
          const Icon(Icons.edit,color: Colors.white,).onTap((){
            setState(() {
              isEdit = !isEdit;
            });
          }),const SizedBox(width: 20.0,),
        ],
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      readOnly: isEdit,
                      decoration: const InputDecoration(
                        labelText: 'Full Name',
                        hintText: 'Maan Theme',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.EMAIL,
                      readOnly: isEdit,
                      decoration: const InputDecoration(
                        labelText: 'Email Address',
                        hintText: 'maantheme@gmail.com',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.PHONE,
                      readOnly: isEdit,
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        hintText: '+8801767432554',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.ADDRESS,
                      readOnly: isEdit,
                      decoration: const InputDecoration(
                        labelText: 'Full Address',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Dhaka, Bangladesh',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Your Image (Optional)',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),),
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
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Password',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),),
                  ).visible(!isEdit),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(color: kMainColor),
                        color: Colors.white,
                      ),
                      child: Text('Change Password',style: kTextStyle.copyWith(color: kMainColor,fontSize: 18.0),),
                    ).visible(!isEdit).onTap(() => const ChangePassword().launch(context)),
                  ),
                  ButtonGlobal(
                      buttontext: 'Save',
                      buttonDecoration:
                      kButtonDecoration.copyWith(color: kMainColor),
                      onPressed: () {
                        setState(() {
                          isEdit = !isEdit;
                        });
                      }).visible(isEdit),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

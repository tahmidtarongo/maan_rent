import 'package:flutter/material.dart';
import 'package:maan_rent/Screens/Tenants/add_new_tenant.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../constant.dart';

class EmptyTenants extends StatefulWidget {
  const EmptyTenants({Key? key}) : super(key: key);

  @override
  _EmptyTenantsState createState() => _EmptyTenantsState();
}

class _EmptyTenantsState extends State<EmptyTenants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kMainColor,
        onPressed: () {
          const AddNewTenants().launch(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      appBar: AppBar(
        title: Text(
          'Empty Tenant',
          style: kTextStyle.copyWith(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kMainColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: context.width(),
              height: context.height(),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: kDarkWhite,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 200.0,
                  ),
                  Image.asset('images/emptytenant.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';
import 'add_new_lease.dart';

class EmptyLease extends StatefulWidget {
  const EmptyLease({Key? key}) : super(key: key);

  @override
  _EmptyLeaseState createState() => _EmptyLeaseState();
}

class _EmptyLeaseState extends State<EmptyLease> {
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
          const AddNewLease().launch(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: Text(
          'Empty Lease',
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
                  Image.asset('images/emptylease.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

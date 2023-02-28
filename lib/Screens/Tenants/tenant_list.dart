import 'package:flutter/material.dart';
import 'package:maan_rent/Screens/Tenants/tenant_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constant.dart';

class TenantList extends StatefulWidget {
  const TenantList({Key? key}) : super(key: key);

  @override
  _TenantListState createState() => _TenantListState();
}

class _TenantListState extends State<TenantList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Tenant List',
          style: kTextStyle.copyWith(color: Colors.white),
        ),
        centerTitle: true,
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
              padding: const EdgeInsets.all(20.0),
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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      onTap: () => const TenantDetails().launch(context),
                      leading: Image.asset('images/profile.png'),
                      title: Text(
                        'Sahidul Islam',
                        style: kTextStyle,
                      ),
                      subtitle: Text(
                        '1640 winifred way, Richmond',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      onTap: () => const TenantDetails().launch(context),
                      leading: Image.asset('images/profile.png'),
                      title: Text(
                        'Sahidul Islam',
                        style: kTextStyle,
                      ),
                      subtitle: Text(
                        '1640 winifred way, Richmond',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      onTap: () => const TenantDetails().launch(context),
                      leading: Image.asset('images/profile.png'),
                      title: Text(
                        'Sahidul Islam',
                        style: kTextStyle,
                      ),
                      subtitle: Text(
                        '1640 winifred way, Richmond',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      onTap: () => const TenantDetails().launch(context),
                      leading: Image.asset('images/profile.png'),
                      title: Text(
                        'Sahidul Islam',
                        style: kTextStyle,
                      ),
                      subtitle: Text(
                        '1640 winifred way, Richmond',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      onTap: () => const TenantDetails().launch(context),
                      leading: Image.asset('images/profile.png'),
                      title: Text(
                        'Sahidul Islam',
                        style: kTextStyle,
                      ),
                      subtitle: Text(
                        '1640 winifred way, Richmond',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      onTap: () => const TenantDetails().launch(context),
                      leading: Image.asset('images/profile.png'),
                      title: Text(
                        'Sahidul Islam',
                        style: kTextStyle,
                      ),
                      subtitle: Text(
                        '1640 winifred way, Richmond',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0,),Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      onTap: () => const TenantDetails().launch(context),
                      leading: Image.asset('images/profile.png'),
                      title: Text(
                        'Sahidul Islam',
                        style: kTextStyle,
                      ),
                      subtitle: Text(
                        '1640 winifred way, Richmond',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maan_rent/GlobalComponents/sample_data.dart';
import 'package:maan_rent/Screens/Home/home.dart';
import 'package:maan_rent/Screens/Lease/empty_lease.dart';
import 'package:maan_rent/Screens/Maintenance/maintenance_list.dart';
import 'package:maan_rent/Screens/Payments/empty_payment.dart';
import 'package:maan_rent/Screens/Properties/application_list.dart';
import 'package:maan_rent/Screens/Properties/empty_properties.dart';
import 'package:maan_rent/Screens/Settings/account_settings.dart';
import 'package:maan_rent/Screens/Settings/payment_settngs.dart';
import 'package:maan_rent/Screens/Settings/withdraw_settings.dart';
import 'package:maan_rent/Screens/Tenants/empty_tenants.dart';
import 'package:maan_rent/constant.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  List<Map<String, dynamic>> counterList = [
    {
      "image": 'images/building.png',
      "counter": '15',
      "things": 'Total Buildings'
    },
    {
      "image": 'images/apartment.png',
      "counter": '15',
      "things": 'Total Apartments'
    },
    {"image": 'images/tenant.png', "counter": '15', "things": 'Total Tenants'},
    {
      "image": 'images/vacancy.png',
      "counter": '15',
      "things": 'Total Vacancies'
    },
    {"image": 'images/lease.png', "counter": '15', "things": 'Total Leases'},
  ];

  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Landlord Dashboard',
          style: kTextStyle.copyWith(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: kMainColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          color: kMainColor,
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            padding: const EdgeInsets.only(right: 20.0),
            children: <Widget>[
              Row(
                children: [
                  DrawerHeader(
                    child: Image.asset('images/logo.png'),
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(
                  Icons.dashboard_customize,
                  color: Colors.white,
                ),
                title: Text(
                  'Dashboard ',
                  style:
                      kTextStyle.copyWith(color: Colors.white, fontSize: 18.0),
                ),
                onTap: () {
                  const Home().launch(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.home_filled,
                  color: Colors.white,
                ),
                title: Text(
                  'Properties',
                  style:
                      kTextStyle.copyWith(color: Colors.white, fontSize: 18.0),
                ),
                onTap: () {
                  const EmptyProperties().launch(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.userAlt,
                  color: Colors.white,
                ),
                title: Text(
                  'Tenants',
                  style:
                      kTextStyle.copyWith(color: Colors.white, fontSize: 18.0),
                ),
                onTap: () {
                  const EmptyTenants().launch(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.users,
                  color: Colors.white,
                ),
                title: Text(
                  'Lease',
                  style:
                      kTextStyle.copyWith(color: Colors.white, fontSize: 18.0),
                ),
                onTap: () {
                  const EmptyLease().launch(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                ),
                title: Text(
                  'Payments ',
                  style:
                      kTextStyle.copyWith(color: Colors.white, fontSize: 18.0),
                ),
                onTap: () {
                  const EmptyPayment().launch(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                title: Text(
                  'Applications ',
                  style:
                      kTextStyle.copyWith(color: Colors.white, fontSize: 18.0),
                ),
                onTap: () {
                  const ApplicationList().launch(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.pan_tool_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  'Maintenance Request ',
                  style:
                      kTextStyle.copyWith(color: Colors.white, fontSize: 18.0),
                ),
                onTap: () {
                  const MaintenanceList().launch(context);
                },
              ),
              ExpansionPanelList(
                expandedHeaderPadding: EdgeInsets.zero,
                expansionCallback: (int index, bool isExpanded) {},
                animationDuration: const Duration(seconds: 1),
                elevation: 0,
                dividerColor: kMainColor,
                children: [
                  ExpansionPanel(
                    canTapOnHeader: true,
                    backgroundColor: kMainColor,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Text(
                                'Settings',
                                style: kTextStyle.copyWith(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                expanded == false
                                    ? expanded = true
                                    : expanded = false;
                              });
                            },
                          ),
                        ],
                      );
                    },
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            onTap: () =>
                                const AccountSettings().launch(context),
                            title: Text(
                              'Account Setting',
                              style: kTextStyle.copyWith(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            onTap: () =>
                                const PaymentSettings().launch(context),
                            title: Text(
                              'Payment Settings',
                              style: kTextStyle.copyWith(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: ListTile(
                            onTap: () =>
                                const WithdrawSettings().launch(context),
                            title: Text(
                              'Withdraw Settings',
                              style: kTextStyle.copyWith(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    isExpanded: expanded,
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Log Out ',
                  style:
                      kTextStyle.copyWith(color: Colors.white, fontSize: 18.0),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: context.width(),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: kDarkWhite,
              ),
              child: Column(
                children: [
                  HorizontalList(
                    spacing: 10,
                    itemCount: counterList.length,
                    itemBuilder: (_, i) {
                      return CounterCard(
                              image: counterList[i]['image'],
                              count: counterList[i]['counter'],
                              things: counterList[i]['things'])
                          .onTap(
                        () {},
                        highlightColor: context.cardColor,
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(30.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Total Rent Collection',
                                    style: kTextStyle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          _buildDefaultSplineChart(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(30.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Rent Due',
                                    style: kTextStyle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  '\$35,000.00',
                                  style: kTextStyle.copyWith(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Till 30 July',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                              ],
                            ),
                          ),
                          _buildDefaultColumnChart(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              _buildDefaultDoughnutChart(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(30.0),
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                              ),
                              child: Text(
                                'Maintenance Request',
                                style: kTextStyle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset('images/house.png'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.add_circle_outline,
                                color: kGreyTextColor,
                              ),
                              TextButton(
                                onPressed: () {
                                  // const SignUpLandlord().launch(context);
                                },
                                child: Text(
                                  'Add Add New Applicants ',
                                  style: kTextStyle.copyWith(
                                    color: kGreyTextColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<ChartSampleData> chartData = <ChartSampleData>[
  ChartSampleData(
      x: 'Jan', y: 43, secondSeriesYValue: 37, thirdSeriesYValue: 41),
  ChartSampleData(
      x: 'Feb', y: 45, secondSeriesYValue: 37, thirdSeriesYValue: 45),
  ChartSampleData(
      x: 'Mar', y: 50, secondSeriesYValue: 39, thirdSeriesYValue: 48),
  ChartSampleData(
      x: 'Apr', y: 55, secondSeriesYValue: 43, thirdSeriesYValue: 52),
  ChartSampleData(
      x: 'May', y: 63, secondSeriesYValue: 48, thirdSeriesYValue: 57),
  ChartSampleData(
      x: 'Jun', y: 68, secondSeriesYValue: 54, thirdSeriesYValue: 61),
  ChartSampleData(
      x: 'Jul', y: 72, secondSeriesYValue: 57, thirdSeriesYValue: 66),
  ChartSampleData(
      x: 'Aug', y: 70, secondSeriesYValue: 57, thirdSeriesYValue: 66),
  ChartSampleData(
      x: 'Sep', y: 66, secondSeriesYValue: 54, thirdSeriesYValue: 63),
  ChartSampleData(
      x: 'Oct', y: 57, secondSeriesYValue: 48, thirdSeriesYValue: 55),
  ChartSampleData(
      x: 'Nov', y: 50, secondSeriesYValue: 43, thirdSeriesYValue: 50),
  ChartSampleData(
      x: 'Dec', y: 45, secondSeriesYValue: 37, thirdSeriesYValue: 45)
];

/// Returns the defaul spline chart.
SfCartesianChart _buildDefaultSplineChart() {
  return SfCartesianChart(
    plotAreaBorderWidth: 0,
    legend: Legend(isVisible: true),
    primaryXAxis: CategoryAxis(
        majorGridLines: const MajorGridLines(width: 0),
        labelPlacement: LabelPlacement.onTicks),
    primaryYAxis: NumericAxis(
        minimum: 30,
        maximum: 80,
        axisLine: const AxisLine(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        labelFormat: '{value}k',
        majorTickLines: const MajorTickLines(size: 0)),
    series: _getDefaultSplineSeries(),
    tooltipBehavior: TooltipBehavior(enable: true),
  );
}

/// Returns the list of chart series which need to render on the spline chart.
List<SplineSeries<ChartSampleData, String>> _getDefaultSplineSeries() {
  return <SplineSeries<ChartSampleData, String>>[
    SplineSeries<ChartSampleData, String>(
      dataSource: chartData,
      xValueMapper: (ChartSampleData sales, _) => sales.x as String,
      yValueMapper: (ChartSampleData sales, _) => sales.y,
      markerSettings: const MarkerSettings(isVisible: true),
      name: 'Rent Paid',
    ),
    SplineSeries<ChartSampleData, String>(
      dataSource: chartData,
      name: 'Rent Due',
      markerSettings: const MarkerSettings(isVisible: true),
      xValueMapper: (ChartSampleData sales, _) => sales.x as String,
      yValueMapper: (ChartSampleData sales, _) => sales.secondSeriesYValue,
    )
  ];
}

/// Get default column chart
SfCartesianChart _buildDefaultColumnChart() {
  return SfCartesianChart(
    plotAreaBorderWidth: 0,
    primaryXAxis: CategoryAxis(
      majorGridLines: const MajorGridLines(width: 0),
    ),
    primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        labelFormat: '{value}k',
        majorTickLines: const MajorTickLines(size: 0)),
    series: _getDefaultColumnSeries(),
  );
}

/// Get default column series
List<ColumnSeries<ChartSampleData, String>> _getDefaultColumnSeries() {
  return <ColumnSeries<ChartSampleData, String>>[
    ColumnSeries<ChartSampleData, String>(
      dataSource: <ChartSampleData>[
        ChartSampleData(x: 'Jan', y: 11),
        ChartSampleData(x: 'Feb', y: 18),
        ChartSampleData(x: 'March', y: 15),
        ChartSampleData(x: 'April', y: 25),
        ChartSampleData(x: 'May', y: 23),
        ChartSampleData(x: 'June', y: 29),
      ],
      xValueMapper: (ChartSampleData sales, _) => sales.x as String,
      yValueMapper: (ChartSampleData sales, _) => sales.y,
      dataLabelSettings: const DataLabelSettings(
          isVisible: true, textStyle: TextStyle(fontSize: 10)),
    )
  ];
}

/// Return the circular chart with default doughnut series.
SfCircularChart _buildDefaultDoughnutChart() {
  return SfCircularChart(
    legend: Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
    series: _getDefaultDoughnutSeries(),
  );
}

/// Returns the doughnut series which need to be render.
List<DoughnutSeries<ChartSampleData, String>> _getDefaultDoughnutSeries() {
  return <DoughnutSeries<ChartSampleData, String>>[
    DoughnutSeries<ChartSampleData, String>(
        radius: '100%',
        explode: true,
        explodeOffset: '0%',
        dataSource: <ChartSampleData>[
          ChartSampleData(
            x: 'Total: 55',
            y: 55,
            text: '55',
          ),
          ChartSampleData(x: 'Pending: 30', y: 31, text: '30'),
          ChartSampleData(x: 'Approved: 25', y: 7.7, text: '25'),
        ],
        xValueMapper: (ChartSampleData data, _) => data.x as String,
        yValueMapper: (ChartSampleData data, _) => data.y,
        dataLabelMapper: (ChartSampleData data, _) => data.text,
        dataLabelSettings: const DataLabelSettings(isVisible: true))
  ];
}

// ignore: must_be_immutable
class CounterCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  CounterCard({required this.image, required this.count, required this.things});

  String? image, count, things;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(image: AssetImage(image!), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Text(
            count!,
            style: kTextStyle.copyWith(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: SizedBox(
                width: 80.0,
                child: Text(
                  things!,
                  style: kTextStyle.copyWith(color: Colors.white),
                  maxLines: 2,
                )),
          ),
        ],
      ),
    );
  }
}

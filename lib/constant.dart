import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kMainColor = Color(0xFF21C69F);
const kSecondaryColor = Color(0xFFD4F9F4);
const kGreyTextColor = Color(0xFF818283);
const kBorderColorTextField = Color(0xFFD9DADA);
const kDarkWhite = Color(0xFFEFF5F5);
const kTitleColor = Color(0xFF25262B);
const kCircleColor = Color(0xFFFB754D);
final kTextStyle = GoogleFonts.nunitoSans(
  color: kTitleColor,
);
const kButtonDecoration = BoxDecoration(
  color: kMainColor,
  borderRadius: BorderRadius.all(
    Radius.circular(40.0),
  ),
);

const kInputDecoration = InputDecoration(
  hintStyle: TextStyle(color: kBorderColorTextField),
  filled: true,
  fillColor: Colors.white70,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    borderSide: BorderSide(color: kBorderColorTextField, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6.0)),
    borderSide: BorderSide(color: kBorderColorTextField, width: 2),
  ),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: const BorderSide(color: kBorderColorTextField),
  );
}
final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

List<String> pages = ["1","2","3"];
List<String> language = [
  'English',
  'Bengali',
  'Hindi',
  'Urdu',
  'French',
  'Spanish'
];

List<String> productCategory = [
  'Fashion',
  'Electronics',
  'Computer',
  'Gadgets',
  'Watches',
  'Cloths'
];


List<String> gender = [
  'Male',
  'Female',
  'Others',
];

List<String> paymentType = [
  'Cheque',
  'Deposit',
  'Cash',
  'Transfer',
  'Sales',
];
List<String> posStats = [
  'Daily',
  'Monthly',
  'Yearly',
];
List<String> saleStats = [
  'Weekly',
  'Monthly',
  'Yearly',
];


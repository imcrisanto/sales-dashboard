import 'package:flutter/material.dart';
import 'package:sales_dashboard/database_mimic.dart';

class SettingsScreen extends StatefulWidget {
  final List<DataEntry> entry;
  const SettingsScreen({Key? key, required this.entry}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _formKey = GlobalKey<FormState>();
  double _amount = 0;
  late String _category;
  double _payment = 0;
  late String formattedDate;
  late String entryDate;
  final List<String> categories = ["Dine-In", "Take-Out", "Delivery"];

  String _currentSelectedValue = 'Dine-In';

  @override
  void initState() {
    var date = DateTime.now().toString();

    var dateParse = DateTime.parse(date);

    formattedDate = "${dateParse.day} | ${dateParse.month} | ${dateParse.year}";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Monthly Expenses',
              style: TextStyle(
                  color: Color(0xffD64123),
                  fontSize: 54,
                  fontWeight: FontWeight.w800),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        'Rental',
                        style: TextStyle(
                            color: Color(0xff7D0C0E),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        'Material',
                        style: TextStyle(
                            color: Color(0xff7D0C0E),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        'VAT Percentage',
                        style: TextStyle(
                            color: Color(0xff7D0C0E),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        'Utilities',
                        style: TextStyle(
                            color: Color(0xff7D0C0E),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        'CUSA',
                        style: TextStyle(
                            color: Color(0xff7D0C0E),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        'Royalty Percentage',
                        style: TextStyle(
                            color: Color(0xff7D0C0E),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.redAccent, //color of divider
              height: 5, //height spacing of divider
              thickness: 2, //thickness of divier line
            ),
            const Text(
              'Monthly Sales Targets',
              style: TextStyle(
                  color: Color(0xffD64123),
                  fontSize: 54,
                  fontWeight: FontWeight.w800),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        'Gross Sales',
                        style: TextStyle(
                            color: Color(0xff7D0C0E),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        'Net Profit',
                        style: TextStyle(
                            color: Color(0xff7D0C0E),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      const Text(
                        'Order Volume',
                        style: TextStyle(
                            color: Color(0xff7D0C0E),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 250,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'EDIT',
                      style: TextStyle(
                          color: Color(0xffD64123),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 250,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'SAVE',
                      style: TextStyle(
                          color: Color(0xffD64123),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  bool isNumeric(String s) {
    return double.tryParse(s) != null;
  }
}

import 'package:flutter/material.dart';
import 'package:sales_dashboard/database_mimic.dart';

class SalesScreen extends StatelessWidget {
  final List<DataEntry> entry;
  const SalesScreen({Key? key, required this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: const Text(
              'Sales Entries',
              style: TextStyle(
                  color: Color(0xffD64123),
                  fontSize: 54,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Transaction ID',
                style: TextStyle(
                    color: Color(0xff7D0C0E),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                'Dining Category',
                style: TextStyle(
                    color: Color(0xff7D0C0E),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                'Amount',
                style: TextStyle(
                    color: Color(0xff7D0C0E),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                'Type',
                style: TextStyle(
                    color: Color(0xff7D0C0E),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                'User',
                style: TextStyle(
                    color: Color(0xff7D0C0E),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Divider(
            color: Colors.redAccent, //color of divider
            height: 5, //height spacing of divider
            thickness: 2, //thickness of divier line
          ),
          for (int i = 0; i < entry.length; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "${entry[i].timeEnt}",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    color: Color(0xff7D0C0E),
                  ),
                ),
                Text(
                  "${entry[i].categoryEnt}",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    color: Color(0xff7D0C0E),
                  ),
                ),
                Text(
                  '₱ ' "${entry[i].amountEnt}" '.00',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    color: Color(0xff7D0C0E),
                  ),
                ),
                Text(
                  "${entry[i].paymentEnt}",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    color: Color(0xff7D0C0E),
                  ),
                ),
                Text(
                  "${entry[i].userEnt}",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    color: Color(0xff7D0C0E),
                  ),
                ),
              ],
            ),
          Divider(
            color: Colors.redAccent, //color of divider
            height: 5, //height spacing of divider
            thickness: 2, //thickness of divier line
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:sales_dashboard/database_mimic.dart';

class SalesScreen extends StatelessWidget {
  final List<DataEntry> entry;
  const SalesScreen({Key? key, required this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Text(
                'Sales Entries',
                style: TextStyle(
                    color: Color(0xffD64123),
                    fontSize: 54,
                    fontWeight: FontWeight.w800),
              ),
            ),
            DataTable(
                border: const TableBorder(
                    horizontalInside:
                        BorderSide(width: 2, color: Colors.redAccent)),
                columns: const [
                  DataColumn(
                      label: Text(
                    'Transaction ID',
                    style: TextStyle(
                        color: Color(0xff7D0C0E),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )),
                  DataColumn(
                      label: Text(
                    'Dining Category',
                    style: TextStyle(
                        color: Color(0xff7D0C0E),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )),
                  DataColumn(
                      label: Text(
                    'Amount',
                    style: TextStyle(
                        color: Color(0xff7D0C0E),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )),
                  DataColumn(
                      label: Text(
                    'Type',
                    style: TextStyle(
                        color: Color(0xff7D0C0E),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  )),
                  DataColumn(
                      label: Text(
                    'User',
                    style: TextStyle(
                        color: Color(0xff7D0C0E),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ))
                ],
                rows: [
                  for (int i = 0; i < entry.length; i++)
                    DataRow(cells: [
                      DataCell(Text(
                        entry[i].timeEnt,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: Color(0xff7D0C0E),
                        ),
                      )),
                      DataCell(Text(
                        entry[i].categoryEnt,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: Color(0xff7D0C0E),
                        ),
                      )),
                      DataCell(Text(
                        '₱ ' "${entry[i].amountEnt}" '.00',
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: Color(0xff7D0C0E),
                        ),
                      )),
                      DataCell(Text(
                        entry[i].paymentEnt,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: Color(0xff7D0C0E),
                        ),
                      )),
                      DataCell(Text(
                        entry[i].userEnt,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: Color(0xff7D0C0E),
                        ),
                      ))
                    ])
                ]),
          ],
        ),
      ),
    ));
  }
}

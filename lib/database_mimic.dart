import 'package:flutter/foundation.dart';

class DataEntry {
  DataEntry(double amountInt, String categoryInt, String paymentType,
      String userInt, String timeInt) {
    amountEnt = amountInt;
    categoryEnt = categoryInt;
    paymentEnt = paymentType;
    userEnt = userInt;
    timeEnt = timeInt;
  }
  String timeEnt = '0000-00-00 00:00:00';
  double amountEnt = 0.0;
  String categoryEnt = '';
  String paymentEnt = "";
  String userEnt = 'Admin';
}

class Entries {
  List<DataEntry> storage = [
    DataEntry(234.00, 'new', "GCash", 'Admin01', "2022-05-20 12:09:01"),
    DataEntry(234.00, 'dine in', "Cash", 'Admin01', "2022-05-20 - 13:09:03"),
    DataEntry(500.00, 'field', "Card", 'Admin01', "2022-05-20 - 13:12:33"),
    DataEntry(
        103712355.23, 'inventory', "Debit", 'Admin01', "2022-05-20 - 13:15:45")
  ];

  void addentry(List<DataEntry> roll, double amt, String categ, String pay,
      String user, String time) {
    roll.add(DataEntry(amt, categ, pay, user, time));
    return;
  }

  void testentry(
      double amt, String categ, String pay, String user, String time) {
    storage.add(DataEntry(amt, categ, pay, user, time));
    return;
  }

  void testprint(List<DataEntry> roll) {
    for (int i = 0; i < roll.length; i++) {
      if (kDebugMode) {
        print(
            "Time: ${roll[i].timeEnt}; Amount: ${roll[i].amountEnt};Category: ${roll[i].categoryEnt};Payment: ${roll[i].paymentEnt};User: ${roll[i].userEnt}");
      }
    }
  }

  List<DataEntry> listreturn() {
    return storage;
  }
}

import 'package:flutter/foundation.dart';

class DataEntry {
  DataEntry(
      double amountInt, String categoryInt, double paymentInt, String userInt) {
    amountEnt = amountInt;
    categoryEnt = categoryInt;
    paymentEnt = paymentInt;
    userEnt = userInt;
  }
  double amountEnt = 0.0;
  String categoryEnt = '';
  double paymentEnt = 0.0;
  String userEnt = 'Admin';
}

class Entries {
  List<DataEntry> storage = [
    DataEntry(234.00, 'new', 123123, 'Admin01'),
    DataEntry(234.00, 'dine in', 1177.3, 'Admin01'),
    DataEntry(500.00, 'field', 2333, 'Admin01'),
    DataEntry(103712355.23, 'inventory', 1212.3123, 'Admin01')
  ];

  void addentry(
      List<DataEntry> roll, double amt, String categ, double pay, String user) {
    roll.add(DataEntry(amt, categ, pay, user));
    return;
  }

  void testentry(double amt, String categ, double pay, String user) {
    storage.add(DataEntry(amt, categ, pay, user));
    return;
  }

  void testprint(List<DataEntry> roll) {
    for (int i = 0; i < roll.length; i++) {
      if (kDebugMode) {
        print(
            "Amount: ${roll[i].amountEnt};Category: ${roll[i].categoryEnt};Payment: ${roll[i].paymentEnt};User: ${roll[i].userEnt}");
      }
    }
  }

  List<DataEntry> listreturn() {
    return storage;
  }
}

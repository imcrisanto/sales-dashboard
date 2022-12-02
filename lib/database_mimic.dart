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
  String userEnt = '';
}

//Pre-populated database
class Entries {
  List<DataEntry> storage = [
    DataEntry(1876, 'Dine In', "Cash", 'Sheryl', "2022-05-20 00:00:00"),
    DataEntry(1154, 'Dine In', "GCash", 'Sheryl', "2022-05-20 00:00:00"),
    DataEntry(786, 'Takeout', "Cash", 'Sheryl', "2022-05-20 00:00:00"),
    DataEntry(114, 'Dine In', "GCash", 'Alvin', "2022-05-20 00:00:00"),
    DataEntry(981, 'Delivery', "Credit", 'Alvin', "2022-05-20 00:00:00"),
    DataEntry(1061, 'Delivery', "Credit", 'Sheryl', "2022-05-20 00:00:00"),
    DataEntry(914, 'Takeout', "Cash", 'Sheryl', "2022-05-20 00:00:00"),
    DataEntry(459, 'Dine In', "Debit", 'Justin', "2022-05-20 00:00:00"),
    DataEntry(384, 'Takeout', "Cash", 'Sheryl', "2022-05-20 00:00:00"),
    DataEntry(1019, 'Delivery', "Cash", 'Justin', "2022-05-20 00:00:00"),
    DataEntry(855, 'Dine In', "Debit", 'Justin', "2022-05-20 00:00:00"),
    DataEntry(560, 'Dine In', "Cash", 'Justin', "2022-05-20 00:00:00"),
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

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
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Amount',
                                  style: TextStyle(
                                      color: Color(0xff7D0C0E),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      _amount = double.parse(value);
                                    },
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter sales amount',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      } else if (isNumeric(value) == false) {
                                        return 'Please enter a numeric value';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Amount',
                                  style: TextStyle(
                                      color: Color(0xff7D0C0E),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      _amount = double.parse(value);
                                    },
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter sales amount',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      } else if (isNumeric(value) == false) {
                                        return 'Please enter a numeric value';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Amount',
                                  style: TextStyle(
                                      color: Color(0xff7D0C0E),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      _amount = double.parse(value);
                                    },
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter sales amount',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      } else if (isNumeric(value) == false) {
                                        return 'Please enter a numeric value';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Amount',
                                  style: TextStyle(
                                      color: Color(0xff7D0C0E),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      _amount = double.parse(value);
                                    },
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter sales amount',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      } else if (isNumeric(value) == false) {
                                        return 'Please enter a numeric value';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Amount',
                                  style: TextStyle(
                                      color: Color(0xff7D0C0E),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      _amount = double.parse(value);
                                    },
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter sales amount',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      } else if (isNumeric(value) == false) {
                                        return 'Please enter a numeric value';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Amount',
                                  style: TextStyle(
                                      color: Color(0xff7D0C0E),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      _amount = double.parse(value);
                                    },
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter sales amount',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      } else if (isNumeric(value) == false) {
                                        return 'Please enter a numeric value';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Amount',
                                  style: TextStyle(
                                      color: Color(0xff7D0C0E),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      _amount = double.parse(value);
                                    },
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter sales amount',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      } else if (isNumeric(value) == false) {
                                        return 'Please enter a numeric value';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Amount',
                                  style: TextStyle(
                                      color: Color(0xff7D0C0E),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      _amount = double.parse(value);
                                    },
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter sales amount',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      } else if (isNumeric(value) == false) {
                                        return 'Please enter a numeric value';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 80,
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'ADD ENTRY',
                                style: const TextStyle(
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
    );
  }

  bool isNumeric(String s) {
    return double.tryParse(s) != null;
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sales_dashboard/database_mimic.dart';
import '../screens/sales_screen.dart';

class DashHomeScreen extends StatefulWidget {
  final List<DataEntry> entry;
  const DashHomeScreen({Key? key, required this.entry}) : super(key: key);

  @override
  State<DashHomeScreen> createState() => _DashHomeScreenState();
}

class _DashHomeScreenState extends State<DashHomeScreen> {
  final _formKey = GlobalKey<FormState>();
  double _amount = 0;
  late String _category;
  double _payment = 0;
  late String formattedDate;
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Kumusta' 'Al'),
                    Text('Here is your summary analysis'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(formattedDate),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Orders'),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Sales to Date'),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Monthly Costs'),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Breakeven'),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
            const Text('Today Sales'),
            Form(
              key: _formKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Amount'),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: TextFormField(
                              onChanged: (value) {
                                _amount = double.parse(value);
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter a search term',
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
                          )
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
                          const Text('Category'),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: FormField<String>(
                              builder: (FormFieldState<String> state) {
                                return InputDecorator(
                                  isEmpty: true,
                                  decoration: InputDecoration(
                                      errorStyle: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 16.0),
                                      hintText: 'Please select expense',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0))),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: _currentSelectedValue,
                                      isDense: true,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _currentSelectedValue = newValue!;
                                          _category = newValue;
                                        });
                                      },
                                      items: categories.map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                          /*FormField<String>(
                            builder: (FormFieldState<String> state) {
                              return InputDecorator(
                                  decoration: InputDecoration(
                                      errorStyle: const TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 16.0),
                                      hintText: 'Please select category',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0))),
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_downward),
                                    elevation: 16,
                                    style: const TextStyle(
                                        color: Colors.deepPurple),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'Dine-in',
                                      'Two',
                                      'Free',
                                      'Four'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ));
                            },
                          )*/
                          /*Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: TextFormField(
                              onChanged: (value) {
                                _category = value;
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter a search term',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                } else if (isNumeric(value) == true) {
                                  return 'Please enter a valid category';
                                }
                                return null;
                              },
                            ),
                          )*/
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
                          const Text('Payment'),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: TextFormField(
                              onChanged: (value) {
                                _payment = double.parse(value);
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter a search term',
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
                          )
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        if (kDebugMode) {
                          //print(
                          //    "Amount: $_amount Category: $_category, Payment: $_payment");
                          widget.entry.add(DataEntry(
                              _amount, _category, _payment, "Admin01"));

                          Entries().testprint(widget.entry);
                        }

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Adding to database')),
                        );
                      }
                    },
                    child: const Text('Add Entry'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

bool isNumeric(String s) {
  return double.tryParse(s) != null;
}

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('This is the cost screen'),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  isEmpty: false,
                                  decoration: InputDecoration(
                                      errorStyle: const TextStyle(
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
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            var date = DateTime.now().toString();

                            var dateParse = DateTime.parse(date);

                            entryDate =
                                "${dateParse.year}-${dateParse.month}-${dateParse.day} ${dateParse.hour}:${dateParse.minute}:${dateParse.second}";
                            widget.entry.add(DataEntry(_amount, _category,
                                _payment, "Admin01", entryDate));

                            Entries().testprint(widget.entry);

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Adding to database')),
                            );
                          }
                        },
                        child: const Text('Add Entry'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          /* Text(
              "Time: ${entry[i].timeEnt}; Amount: ${entry[i].amountEnt};Category: ${entry[i].categoryEnt};Payment: ${entry[i].paymentEnt};User: ${entry[i].userEnt}")*/
        ],
      ),
    );
  }

  bool isNumeric(String s) {
    return double.tryParse(s) != null;
  }
}

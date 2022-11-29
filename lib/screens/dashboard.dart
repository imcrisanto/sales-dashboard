import 'package:flutter/material.dart';
import 'package:sales_dashboard/database_mimic.dart';

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
  late String entryDate;
  final List<String> categories = ["Dine-In", "Take-Out", "Delivery"];

  String _currentSelectedValue = 'Dine-In';
  @override
  void initState() {
    var date = DateTime.now().toString();

    var dateParse = DateTime.parse(date);

    formattedDate =
        "Today   ${dateParse.day}.${dateParse.month}.${dateParse.year}";
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
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 25, 100, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Kumusta ' 'Al',
                        style: TextStyle(
                            color: Color(0xffD64123),
                            fontSize: 54,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Here is your summary analysis',
                        style: TextStyle(
                            color: Color(0xff7D0C0E),
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 280,
                    height: 60,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        formattedDate,
                        style: const TextStyle(
                          color: const Color(0xffD64123),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 10,
                  color: const Color(0xffFFD5AA),
                  child: InkWell(
                    splashColor: Colors.lightBlueAccent.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: SizedBox(
                      width: 300,
                      height: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Orders',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Php' '12,345',
                                  style: TextStyle(
                                      color: Color(0xff7A4206),
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600),
                                ),
                                Image.asset('/icons/orders-icon.png'),
                              ],
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('tap for more info'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color(0xffCADEFF),
                  child: InkWell(
                    splashColor: Colors.lightBlueAccent.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: SizedBox(
                      width: 300,
                      height: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sales to Date',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Php' '12,345',
                                  style: TextStyle(
                                      color: Color(0xff00215D),
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600),
                                ),
                                Image.asset('/icons/sales-icon.png'),
                              ],
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('tap for more info'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color(0xffFDC1C3),
                  child: InkWell(
                    splashColor: Colors.lightBlueAccent.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: SizedBox(
                      width: 300,
                      height: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Monthly Cost',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Php' '12,345',
                                  style: TextStyle(
                                      color: Color(0xff7D0C0E),
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600),
                                ),
                                Image.asset('/icons/cost-icon.png'),
                              ],
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('tap for more info'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color(0xffC4F0B5),
                  child: InkWell(
                    splashColor: Colors.lightBlueAccent.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: SizedBox(
                      width: 300,
                      height: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Breakeven',
                              style: TextStyle(
                                  color: Color(0xff7D0C0E),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Php' '12,345',
                                  style: TextStyle(
                                      color: Color(0xff7D0C0E),
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600),
                                ),
                                Image.asset('/icons/breakeven-icon.png'),
                              ],
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('tap for more info'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Add New Sales Entry',
                    style: TextStyle(
                        color: Color(0xffD64123),
                        fontSize: 54,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
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
                            const Text(
                              'Amount',
                              style: TextStyle(
                                  color: Color(0xff7D0C0E),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
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
                            const Text(
                              'Category',
                              style: TextStyle(
                                  color: Color(0xff7D0C0E),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
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
                            const Text(
                              'Payment',
                              style: TextStyle(
                                  color: Color(0xff7D0C0E),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
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
          ],
        ),
      ),
    );
  }
}

bool isNumeric(String s) {
  return double.tryParse(s) != null;
}

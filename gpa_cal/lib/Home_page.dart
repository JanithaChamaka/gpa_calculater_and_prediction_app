import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TableRow> tableRows = [];

  List<String> selectedOptions = ['A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'D', 'F'];
  List<String> options = ['A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'D', 'F'];
  void _addRow() {
    setState(() {
      tableRows.add(
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Enter value'),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Enter value'),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  value: selectedOptions.length > tableRows.length
                      ? selectedOptions[tableRows.length - 1]
                      : null,
                  onChanged: (newValue) {
                    setState(() {
                      selectedOptions[tableRows.length - 1] = newValue!;
                    });
                  },
              items: options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
      ),
            ),
      )],),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GPA Calculator"),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        TableCell(child: Text('Module')),
                        TableCell(child: Text('Credit')),
                        TableCell(child: Text('Grade')),
                      ],
                    ),
                    ...tableRows,
                  ],
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _addRow,
                  child: Text('Add Row'),
                ),
              ],
            ),
          ),
        ));
  }
}



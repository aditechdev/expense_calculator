import 'package:expense_calculator/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Expense Tracker",
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text("Chart"),
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: "Title"),

                  controller: titleController,
                  // onChanged: (val) {
                  //   titleInput = val;
                  // },
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Amount"),
                  controller: amountController,
                  // onChanged: (val) {
                  //   amountInput = val;
                  // },
                ),
                FlatButton(
                  onPressed: () {
                    print(titleController.text);
                    print(amountController.text);
                    // print(titleInput);
                    // print(amountInput);
                  },
                  child: Text("Add Transactions"),
                  textColor: Colors.purple,
                ),
              ],
            ),
          ),
          TransactionList(),
        ],
      ),
    );
  }
}

import 'package:expense_calculator/widgets/new_transaction.dart';
import 'package:expense_calculator/widgets/transaction_list.dart';
import 'package:expense_calculator/widgets/user_transaction.dart';
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
          UserTransaction(),
          NewTransaction(),
          TransactionList(),
        ],
      ),
    );
  }
}

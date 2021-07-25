import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  // const NewTransaction({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}

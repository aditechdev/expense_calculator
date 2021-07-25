import 'dart:ffi';

class Transaction {
  final String id;
  final String title;
  final Double amount;
  final DateTime date;

  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.date});
}

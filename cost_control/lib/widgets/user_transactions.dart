import 'package:cost_control/widgets/new_transaction.dart';
import 'package:cost_control/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1',
        title: 'брюки',
        amount: 2000.200,
        dateTime: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Футболка',
        amount: 1200,
        dateTime: DateTime.now())
  ];

  void _addTransaction(String txTitle, double txAmount){
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      dateTime: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addTransaction),
      TransactionList(_userTransactions)
    ],);
  }
}

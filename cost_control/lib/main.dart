import 'package:flutter/material.dart';
import 'transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1',
        title: 'New Shoes',
        amount: 2000.200,
        dateTime: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'New wadwdaw',
        amount: 1200,
        dateTime: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cost control'),
      ),
      body: Column(
        children: <Widget> [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
            ),
          ),
          Column(children: transactions.map((tx) {
            return Card(child: Text(tx.title),
            );
          }).toList(),
          )
        ],
      ),
    );
  }
}
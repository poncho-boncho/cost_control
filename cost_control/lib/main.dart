import 'package:flutter/material.dart';
import 'transaction.dart';
import 'package:intl/intl.dart';
import 'dart:io';

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
  final String defaultLocale = Platform.localeName;
  final List<Transaction> transactions = [
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
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 2)
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '₽${tx.amount}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(tx.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                      Text(
                        DateFormat.yMMMd().format(
                        tx.dateTime),
                      style: TextStyle(color: Colors.grey),)
                    ],
                  )
                ],
                ),
            );
          }).toList(),
          )
        ],
      ),
    );
  }
}
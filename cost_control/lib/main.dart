import 'package:cost_control/widgets/user_transactions.dart';
import 'package:flutter/material.dart';
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

  String? titleInput;
  String? amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cost control'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART!'),
              ),
            ),
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
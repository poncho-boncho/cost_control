import 'dart:developer';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Название'),
              controller: titleController,
                ),
            TextField(
              decoration: InputDecoration(labelText: 'Цена'),
              controller: amountController,
            ),
            TextButton(onPressed: () {
              addTx(titleController.text,double.parse(amountController.text));
            },
                child: Text('Добавить'))
          ],),
      ) ,
    );
  }
}

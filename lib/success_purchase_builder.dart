import 'package:flutter/material.dart';

class SuccessfulPurchase extends StatelessWidget {
  const SuccessfulPurchase({Key? key}) : super(key: key);
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Успешно!'),
        centerTitle: true,
      ),
      body: Container(
        height: 200,
        alignment: Alignment.center,
        child: Text('Поздравляем с приобретением!', style: TextStyle(fontSize: 50, color: Colors.green)),
      )
     );
  }
}
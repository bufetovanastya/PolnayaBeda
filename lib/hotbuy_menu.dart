import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_grid_view/buy_history.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:flutter_grid_view/success_purchase_builder.dart';


class HotBuy extends StatelessWidget {
  const HotBuy({Key? key}) : super(key: key);
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('<Быстрая покупка!>'),
        centerTitle: true,

      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Column(
             children: [
               IconButton(
                    icon: const Icon(
                     Icons.account_balance_wallet,
                    color: Colors.red,
                  ),
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessfulPurchase()));
                  },
                ),
                Text("Press to confirm purchase"),
                ],
                )

    ],
      ),
    );
  }
}


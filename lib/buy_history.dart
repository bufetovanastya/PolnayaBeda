import 'package:flutter/material.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:flutter_grid_view/success_purchase_builder.dart';

import 'basket_car.dart';

class BuyHistory extends StatefulWidget {
  int history_index;

  BuyHistory({super.key, required this.history_index});

  @override
  State<BuyHistory> createState() => _BuyHistoryState(history_index);
}

class _BuyHistoryState extends State<BuyHistory> {
  final int history_index;
  _BuyHistoryState(this.history_index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('История покупок'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Column(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.history_rounded,
                  color: Colors.green,
                ),
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessfulPurchase()));
                },
              ),
              Text("ура вы 100-й посетитель, мы дарим вам весь наш салон бесплатно"),
            ],
          )

        ],
      ),
    );
  }
}
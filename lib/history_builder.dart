import 'package:flutter/material.dart';
import 'package:flutter_grid_view/buy_history.dart';
import 'package:flutter_grid_view/models/cars.dart';


class HistoryObject extends StatelessWidget {
  const HistoryObject({Key? key}) : super(key: key);
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('История покупок'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: buyhistory.length,
          itemBuilder: (context, index){

            return BuyHistory(history_index: index);
          }
      ),
    );
  }
}



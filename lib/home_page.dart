import 'package:flutter/material.dart';
import 'package:flutter_grid_view/basket_builder.dart';
import 'package:flutter_grid_view/cars_list.dart';
import 'package:flutter_grid_view/favorites_builder.dart';
import 'package:flutter_grid_view/history_builder.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:flutter_grid_view/profile_builder.dart';
import 'profile_builder.dart';
import 'cart_favorites.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Row(
          children: [
            Text('Автомобили',
              style: TextStyle
                (fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FavoriteObject()));
          }, icon: Icon(Icons.favorite)
          ),
          IconButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BasketObject()));
          }, icon: Icon(Icons.shopping_cart)
          ),
          IconButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HistoryObject()));
          }, icon: Icon(Icons.history)
          ),
          IconButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileObject()));
          }, icon: Icon(Icons.person)
          ),
        ],
      ),
      body: GridView.builder(
          itemCount: carsList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.600
          ),
          itemBuilder: (BuildContext context, int index) {
            return CarsList(index_car: index);
          }
      ),
    );
  }
}

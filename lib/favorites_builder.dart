import 'package:flutter/material.dart';
import 'package:flutter_grid_view/cart_favorites.dart';
import 'package:flutter_grid_view/models/cars.dart';


class FavoriteObject extends StatelessWidget {
  const FavoriteObject({Key? key}) : super(key: key);
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Избранное'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: favorites.length,
          itemBuilder: (context, index){

            return CartFavorites(index_favorite: index);
          }
      ),
    );
  }
}
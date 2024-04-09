import 'package:flutter/material.dart';
import 'package:flutter_grid_view/basket_car.dart';
import 'package:flutter_grid_view/cart_favorites.dart';
import 'package:flutter_grid_view/models/cars.dart';


class BasketObject extends StatelessWidget {
  const BasketObject({Key? key}) : super(key: key);
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Корзина'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: shoppingCart.length,
          itemBuilder: (context, index){

            return ShoppingCart(basket_index: index);
          }
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_grid_view/models/cars.dart';

class CartFavorites extends StatefulWidget {
  CartFavorites({super.key, required this.index_favorite});
  int index_favorite;
  @override
  State<CartFavorites> createState() => _CartFavoritesState(index_favorite);
}

class _CartFavoritesState extends State<CartFavorites> {
  final int index_favorite;
  _CartFavoritesState(this.index_favorite);
  @override
  Widget build(BuildContext context) {
    return Container(
          width: 300,
          height: 200,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(16)
              )
          ),
          child: Column(
            children: <Widget>[
              Expanded(flex: 2 ,child: Image.network(favorites[index_favorite].photo,
                fit: BoxFit.scaleDown,
              ),
              ),
              Center(
                  child: Expanded(child: Text('Название автомобиля: ${favorites[index_favorite].name}'
                  ),
                  )
              ),
              Center(
                  child: Expanded(child: Text('Комплектация: ${favorites[index_favorite].complex}'
                  ),
                  )
              ),
              Center(
                child: Expanded(child: Text('Цена: ${favorites[index_favorite].cost} ₽')),
              ),
            ],
          )
    );
  }
}


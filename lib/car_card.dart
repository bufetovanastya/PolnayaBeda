import 'package:flutter/material.dart';
import 'package:flutter_grid_view/hotbuy_menu.dart';
import 'package:flutter_grid_view/table.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:flutter_grid_view/swiper.dart';
import 'package:flutter_grid_view/video_player.dart';

import 'cart_favorites.dart';

class Cardofcar extends StatefulWidget {
  int index_car;
  Cardofcar({super.key, required this.index_car});

  @override
  State<Cardofcar> createState() => _CardofcarState(index_car);
}

class _CardofcarState extends State<Cardofcar> {
  final int index_car;
  bool _isFavorite = false;
  Color _FavColor = Colors.black;
  int count = 0;
  _CardofcarState(this.index_car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 200,
            child: SwiperImage(index_car: index_car),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Название автомобиля: ${carsList[index_car].name}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.all(8),

            child: Row(
              children: [
                Text('Цена: ${carsList[index_car].cost}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                IconButton(onPressed: (){
                  if (_isFavorite == false) {
                    favorites.add(carsList[index_car]);
                    _FavColor = Colors.red;
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  }
                  else if (_isFavorite == true){
                    favorites.removeWhere((element) => element.id == carsList[index_car].id);
                    _FavColor = Colors.black;
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  }
                }, icon: Icon(Icons.favorite),
                  color: _FavColor,
                  selectedIcon: Icon(Icons.favorite),
                  isSelected: _isFavorite,
                ),
                IconButton(onPressed: (){
                  shoppingCart.add(carsList[index_car]);
                }, icon: Icon(Icons.shopping_cart)
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.send,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HotBuy()));
                      },
                    ),
                    Text("Hot buy!"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Описание:'),
          ),
          Container(
            width: 200,
            height: 100,
            child: ListView(
              children: <Widget>[
                Text('${carsList[index_car].description}')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Характеристики:'),
          ),
          Container(

            child: ExampleTable(index_car: index_car),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: VideoWidget(index_car: index_car),
          )
        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_grid_view/car_button.dart';
import 'package:flutter_grid_view/models/cars.dart';
class CarsList extends StatelessWidget {
  const CarsList({Key? key, required this.index_car}) : super(key: key);
  final int index_car;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(16)
          )
      ),
      child: Column(
        children: <Widget>[
          Expanded(flex: 2 ,child: Image.network(carsList[index_car].photo,
            fit: BoxFit.scaleDown,
          ),
          ),
          Center(
            child: Expanded(child: Text('Название автомобиля: ${carsList[index_car].name}'
            ),
            )
          ),
          Center(
            child: Expanded(child: Text('Комплектация: ${carsList[index_car].complex}'
            ),
            )
          ),
          Center(
            child: Expanded(child: Text('Цена: ${carsList[index_car].cost} ₽')),
          ),
          Center(
              child: Expanded( child: ToCar(index_car: index_car))
          )
        ],
      ),
    );
  }
}

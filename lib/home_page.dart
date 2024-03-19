import 'package:flutter/material.dart';
import 'package:flutter_grid_view/cars_list.dart';
import 'package:flutter_grid_view/models/cars.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text('Автомобили',
          style: TextStyle
            (fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: carsList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.600
          ),
          itemBuilder: (BuildContext context, int index){
            return CarsList(index_car: index);
          }
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_grid_view/buy_history.dart';
import 'package:flutter_grid_view/home_page.dart';
import 'package:flutter_grid_view/models/cars.dart';


class ProfileObject extends StatelessWidget {
  const ProfileObject({Key? key}) : super(key: key);
  @override  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/hasbik-bloger-hasbulla-magomedov_16670494621473779463.jpeg'),
               ),
            Text('Hasbulla Bufetov',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20, width: 200,
              child: Divider(
              color: Colors.teal.shade700,
            )
            ),
            Container(
              color: Colors.white,
             padding: EdgeInsets.all(10.0),
             margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
             child: Row(
               children: <Widget>[
               Icon(
                 Icons.phone,
                 color: Colors.teal,
               ),
                 Text(
                   '+7-959-245-35-66',
                   style: TextStyle(
                     color: Colors.teal.shade900,
                     fontSize: 20.0,
                   ),
                 )
               ],
             ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'hasbuf@example.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal,
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}

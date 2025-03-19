import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'src/second_page.dart';
import 'package:ble_data_converter/ble_data_converter.dart';


void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Rowing: stroke count',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Rowing: stroke count'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Título de la app
            Text(
              'Bienvenido a ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyv_zBMxUUKVdo3MaHAJc3QT5UC_EfVZ_SnQ&s', height: 200,),
            SizedBox(height: 20),

            // Botón "Conectar"
            ElevatedButton(
              onPressed: () {
                // Navegar a la siguiente pantalla
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage_screan()),
                );
              },
              child: Text('Conectar'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage_screan extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {return SecondPage(title: 'Segunda Página');}
}



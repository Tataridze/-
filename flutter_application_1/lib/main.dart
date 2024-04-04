import 'package:flutter/material.dart';
import 'package:flutter_application_1/new_registration_screen.dart';
import 'catalog_screen.dart'; 
import 'product.dart'; 
import 'registration_screen.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:Colors.grey, // серый
        hintColor: Colors.yellow, // желтый
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/catalog',
      routes: {
        '/': (context) => RegistrationScreen(),
        '/catalog': (context) => CatalogScreen(), 
        '/product': (context) => ProductPage(products: CatalogScreen.products),
        '/new_registration': (context) => NewRegistrationScreen(),
      },
    );
  }
}

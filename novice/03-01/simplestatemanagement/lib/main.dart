import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simplestatemanagement/common/theme.dart';
import 'package:simplestatemanagement/models/cart.dart';
import 'package:simplestatemanagement/models/catalog.dart';
import 'package:simplestatemanagement/screens/cart.dart';
import 'package:simplestatemanagement/screens/catalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(builder: (context) => CatalogModel()),
       
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
            builder: (context, catalog, previousCart) =>
                CartModel(catalog, previousCart)),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => MyCatalog(),
          '/cart': (context) => MyCart(),
        },
      ),
    );
  }
}
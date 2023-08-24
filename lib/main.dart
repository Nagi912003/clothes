import 'package:cloths/providers/favorites.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/clothes.dart';
import 'providers/clothes_filter.dart';
import 'providers/clothes_selector_provider.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => Clothes()),
        ChangeNotifierProvider(create: (BuildContext context) => ClothesSelectorProvider()),
        ChangeNotifierProvider(create: (BuildContext context) => Filter()),
        ChangeNotifierProvider(create: (BuildContext context) => Favorites()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}



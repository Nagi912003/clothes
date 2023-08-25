import 'package:cloths/providers/favorites.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'providers/clothes.dart';
import 'providers/clothes_filter.dart';
import 'providers/clothes_selector_provider.dart';

import 'screens/home_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  //hive is a no-sql database
  await Hive.initFlutter();
  //register adapter
  //Hive.registerAdapter(ClothesAdapter());
  //open box
  await Hive.openBox('clothes');
  //run app
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



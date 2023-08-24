import 'package:cloths/providers/favorites.dart';
import 'package:cloths/widgets/main_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesData = Provider.of<Favorites>(context);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: favoritesData.favorites
              .map((e) => Stack(
                children: [
                  mainImage(
                        context: context,
                        selectedHat: e.selectedHat,
                        selectedAccessory: e.selectedAccessories,
                        selectedShirt: e.selectedShirt,
                        selectedTshirt: e.selectedTshirt,
                        selectedPants: e.selectedPants,
                        selectedShoes: e.selectedShoes,
                      ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: IconButton(
                      onPressed: () {
                        favoritesData.removeFavorite(e);
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Theme.of(context).colorScheme.error,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ))
              .toList(),
        ),
      ),
    );
  }
}

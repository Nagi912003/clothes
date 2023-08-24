import 'package:flutter/material.dart';

import 'package:cloths/models/piece.dart';

class Favorites with ChangeNotifier {
  List<FavoriteItem> _favorites = [];

  List<FavoriteItem> get favorites {
    return [..._favorites];
  }

  bool addFavorite(FavoriteItem favoriteItem) {
    if (favoriteItem.selectedTshirt == null || favoriteItem.selectedPants == null) {
      return false;
    }
    _favorites.add(favoriteItem);
    notifyListeners();
    return true;
  }

  void removeFavorite(FavoriteItem favoriteItem) {
    _favorites.remove(favoriteItem);
    notifyListeners();
  }

  bool isFavorite(FavoriteItem favoriteItem) {
    return _favorites.contains(favoriteItem);
  }
}

class FavoriteItem {
  Piece? selectedHat;
  Piece? selectedAccessories;
  Piece? selectedShirt;
  Piece? selectedTshirt;
  Piece? selectedPants;
  Piece? selectedShoes;

  FavoriteItem({
    this.selectedHat,
    this.selectedAccessories,
    this.selectedShirt,
    this.selectedTshirt,
    this.selectedPants,
    this.selectedShoes,
  });
}
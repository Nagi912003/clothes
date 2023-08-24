enum Category { shirt, tshirt, pants, shoes, hat, accessories }

enum MyColor {
  all,
  white,
  black,
  blue,
  darkBlue,
  green,
  red,
  yellow,
  orange,
  purple,
  pink,
  brown,
  grey
}

enum Fit { tight, regular, loose , all}

enum Brightness { light, dark, both, all }

enum OutDoors { indoor, outdoor, both, all }

enum ForWeather { hot, cold, both, all }

enum New { new_, old, all }

class Piece {
  String id;
  String image;
  List<MyColor> colors;
  Category category;
  Brightness brightness;
  String description = '';
  double price;
  Fit fit;
  New isNew;
  OutDoors outDoors;
  ForWeather forWeather;


  Piece({
    required this.id,
    required this.image,
    required this.colors,
    required this.category,
    this.brightness = Brightness.light,
    this.description = '',
    this.price = 0.0,
    this.fit = Fit.regular,
    this.isNew = New.old,
    this.outDoors = OutDoors.outdoor,
    this.forWeather = ForWeather.both,
  });
}

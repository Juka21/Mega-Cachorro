import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(
      this.name,
      this.waitTime,
      this.label,
      this.logoUrl,
      this.desc,
      this.score,
      this.menu,
      );

  static Restaurant generateRestaurant() {
    return Restaurant(
      'Mega Cachorro',
      '20-40 min',
      'Fast Food Marinha Grande',
      'assets/img/logo.png',
      'Avenida Dr. José Henriques Vareda n22 Loja 3',
      4.4,
      {
        'Recomendado': Food.generateRecommendedFoods(),
        'Mega Hambúrgueres': Food.generateMegaHamb(),
        'Cachorros': Food.generateMegaCacho(),
        'Francesinhas': Food.generateFranc(),
      },
    );
  }
}

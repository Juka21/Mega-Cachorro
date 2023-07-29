class Food {
  final int id;
  String imgUrl;
  String name;
  num price;
  List<Map<String, String>> ingredients;

  Food(this.id,
      this.imgUrl,
      this.name,
      this.price,
      this.ingredients,
      );

  static List<Food> generateRecommendedFoods() {
    return [
      Food(
        1,
        'assets/img/megaPatrao.jpg',
        'Mega Hambúrguer à Patrão',
        12,
        [
          {'Pão': 'assets/img/pao1.png'},
          {'Hambúrguer': 'assets/img/pao1.png'},
          {'Alface': 'assets/img/pao1.png'},
          {'Tomate': 'assets/img/pao1.png'},
          {'Queijo': 'assets/img/pao1.png'},
          {'Bacon': 'assets/img/pao1.png'},
          {'Ovo': 'assets/img/pao1.png'},
          {'Cebola tostada': 'assets/img/pao1.png'},
          {'Batata': 'assets/img/pao1.png'},  //Pão / Hambúrguer / Alface / Tomate / Queijo / Bacon / Ovo / Cebola tostada / Batata palha
        ],
      ),
      Food(
        2,
        'assets/img/megaPatrao.jpg',
        'Mega Hambúrguer à Patrão',
        12,
        [
          {'name': 'alface'},
          {'name': 'molho'},
          {'name': 'pão'},
          {'name': 'cona'},
        ],
      ),
    ];
  }

  static List<Food> generateMegaHamb() {
    return [
      Food(
        3,
        'assets/img/megaPatrao.jpg',
        'Mega Hambúrguer à Patrão',
        12,
        [
          {'name': 'alface'},
          {'name': 'molho'},
          {'name': 'pão'},
          {'name': 'cona'},
        ],
      ),
    ];
  }

  static List<Food> generateMegaCacho() {
    return [
      Food(
        4,
        'assets/img/cachoPatroa.jpg',
        'Cachorro à Patroa',
        8,
        [
          {'name': 'Pão Especial'},
          {'name': 'vagina'},
          {'name': 'ácido conídrico'},
          {'name': 'rodela de pito'},
        ],
      ),
    ];
  }

  static List<Food> generateFranc() {
    return [
      Food(
        5,
        'assets/img/Hamb.png',
        'Francesinhas',
        20,
        [
          {'name': 'pito'},
        ],
      ),
    ];
  }
}


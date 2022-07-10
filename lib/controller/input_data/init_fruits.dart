import 'package:fruit_market_summer/model/food_class/food.dart';

// init Organic Fruits
Food strawberries_Fruits = new Food("Strawberry", "Organic Fruits",
    "assets/image_food/fruits/organic_fruits/strawberries.jpg", 300);
Food grapes_Fruits = new Food("Grapes", "Organic Fruits",
    "assets/image_food/fruits/organic_fruits/grapes.jpg", 160);
Food oranges_Fruits = new Food("Oranges", "Organic Fruits",
    "assets/image_food/fruits/organic_fruits/oranges.jpg", 120);
// List Organic Fruits
List<Food> listOrganicFruits = [
  strawberries_Fruits,
  grapes_Fruits,
  oranges_Fruits
];

// init Mixed Fruits Pack
Food multiFruits_Fruits = new Food("Multi Fruits Pack", "Mixed Fruits Pack",
    "assets/image_food/fruits/mixed_fruit_pack/multi_fruits_pack.png", 350);
Food paper_Fruits = new Food("Paper Fruits Pack", "Mixed Fruits Pack",
    "assets/image_food/fruits/mixed_fruit_pack/paper_fruits_pack.png", 230);
Food tropicana_Fruits = new Food("Tropicana", "Mixed Fruits Pack",
    "assets/image_food/fruits/mixed_fruit_pack/tropicana.png", 140);

// List Mixed Fruits Pack
List<Food> listMixedFruitsPack = [
  multiFruits_Fruits,
  paper_Fruits,
  tropicana_Fruits
];

// init Stone Fruits
Food nectarine_Fruits = new Food("Nectarines", "Stone Fruits",
    "assets/image_food/fruits/stone_fruits/nectarine.png", 250);
Food apricots_Fruits = new Food("Apricots", "Stone Fruits",
    "assets/image_food/fruits/stone_fruits/apricots.jpg", 180);
Food peaches_Fruits = new Food("Peaches", "Stone Fruits",
    "assets/image_food/fruits/stone_fruits/peaches.jpg", 100);
// List Stone Fruits
List<Food> listStoneFruits = [
  nectarine_Fruits,
  apricots_Fruits,
  peaches_Fruits
];

// init Melons
Food watermelon_Fruits = new Food("Watermelon", "Melons",
    "assets/image_food/fruits/melons/watermelon.jpg", 125);
Food charentais_Fruits = new Food("Charentais", "Melons",
    "assets/image_food/fruits/melons/charentais.jpg", 110);
Food cantaloupes_Fruits = new Food("Cantaloupes", "Melons",
    "assets/image_food/fruits/melons/cantaloupes.jpg", 180);
// List Melons
List<Food> listMelons = [
  watermelon_Fruits,
  charentais_Fruits,
  cantaloupes_Fruits
];

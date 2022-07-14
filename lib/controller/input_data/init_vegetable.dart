import 'package:fruit_market_summer/model/food_class/food.dart';

// init Organic Vegetable
Food brinjels_vegetable = new Food("Brinjels", "Organic Vegetable",
    "assets/image_food/vegetables/organic_vegetables/brinjels.jpg", 190);
Food brocol_vegetable = new Food("Brocolli", "Organic Vegetable",
    "assets/image_food/vegetables/organic_vegetables/brocolli.jpg", 80);

Food corriander_vegetable = new Food("Corriander", "Organic Vegetable",
    "assets/image_food/vegetables/organic_vegetables/corriander.jpg", 70);
// List Organic Vegetable
List<Food> listOrganicVegetable = [
  brocol_vegetable,
  brinjels_vegetable,
  corriander_vegetable,
];

// init Mixed Vegetables Pack
Food multivegetables_vegetable = new Food(
    "Multi Vegetables",
    "Mixed Vegetables Pack",
    "assets/image_food/vegetables/mix_vegetables/multivegetables.jpg",
    370);
Food paper_vegetable = new Food("Paper Vegetables", "Mixed Vegetables Pack",
    "assets/image_food/vegetables/mix_vegetables/paper.jpg", 270);
Food tropicana_vegetable = new Food("Tropicana", "Mixed Vegetables Pack",
    "assets/image_food/vegetables/mix_vegetables/tropicana.jpg", 180);

// List Mixed Vegetables Pack
List<Food> listMixedVegetablesPack = [
  multivegetables_vegetable,
  paper_vegetable,
  tropicana_vegetable
];

// init Allium Vegetable
Food onion_vegetable = new Food("Onion", "Allium Vegetable",
    "assets/image_food/vegetables/allium/onion.jpg", 130);
Food garlic_vegetable = new Food("Garlic", "Allium Vegetable",
    "assets/image_food/vegetables/allium/garlic.jpg", 110);
Food ginger_vegetable = new Food("Ginger", "Allium Vegetable",
    "assets/image_food/vegetables/allium/ginger.jpg", 180);
// List Allium Vegetable
List<Food> listAlliumVegetable = [
  onion_vegetable,
  garlic_vegetable,
  ginger_vegetable
];

// init Root Vegetable
Food carrots_vegetable = new Food("Carrots", "Root Vegetable",
    "assets/image_food/vegetables/root/carrots.jpg", 125);
Food turnip_vegetable = new Food("Turnip", "Root Vegetable",
    "assets/image_food/vegetables/root/turnip.jpg", 100);
Food potato_vegetable = new Food("Potato", "Root Vegetable",
    "assets/image_food/vegetables/root/potato.jpg", 180);
// List Root Vegetable
List<Food> listRootVegetable = [
  carrots_vegetable,
  turnip_vegetable,
  potato_vegetable
];

import 'package:food_shop/utils/project_images.dart';

import '../models/foods.dart';
import '../models/tabBarModel.dart';

List<TabBarBase> tabbarbase=[
  TabBarBase(Images.burger_icon),
  TabBarBase(Images.chicken_icon),
  TabBarBase(Images.ice_cream_icon),
  TabBarBase(Images.salad_icon),
  TabBarBase(Images.soup_icon),
];

List<Foods> chicken_foods=[
  Foods(name: "Chicken Food", subtitle: "Spice, good, great", price: 13,img: Images.chicken_1),
  Foods(name: "Chicken Food", subtitle: "Spice, good, great", price: 13,img: Images.chicken_2),
  Foods(name: "Chicken Food", subtitle: "Spice, good, great", price: 13,img: Images.chicken_3),
  Foods(name: "Chicken Food", subtitle: "Spice, good, great", price: 13,img: Images.chicken_4),
];

List<Foods> ice_cream_foods=[
  Foods(img: Images.ice_cream_1, name: "Your Cream", subtitle: "Delicius, great,", price: 3),
  Foods(img: Images.ice_cream_2, name: "My Cream", subtitle: "Delicius, great,", price: 5),
];

List<Foods> salad_foods=[
  Foods(img: Images.salad_1, name: "Turkish salad", subtitle: "Good, delicius,great", price: 6),
  Foods(img: Images.salad_2, name: "Turkish salad", subtitle: "Good, delicius,great", price: 6),
  Foods(img: Images.salad_3, name: "Turkish salad", subtitle: "Good, delicius,great", price: 6),
  Foods(img: Images.salad_4, name: "Turkish salad", subtitle: "Good, delicius,great", price: 6)
];

List<Foods> pizza_foods=[
  Foods(img: Images.pizza_1, name: "Sariq Bola", subtitle: "Good adds", price: 9),
  Foods(img: Images.pizza_2, name: "Sariq Bola", subtitle: "Good adds", price: 9),
  Foods(img: Images.pizza_3, name: "Sariq Bola", subtitle: "Good adds", price: 9),
  Foods(img: Images.pizza_4, name: "Sariq Bola", subtitle: "Good adds", price: 9),
];
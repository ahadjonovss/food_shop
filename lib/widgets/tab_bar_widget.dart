import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shop/models/tabBarModel.dart';

import '../utils/project_images.dart';

Widget tab_container(TabBarBase base){
  return Container(
    margin: EdgeInsets.only(right: 20),
    padding: EdgeInsets.all(6),
    height: 36,
    width: 80,
    decoration:BoxDecoration(
      borderRadius:const BorderRadius.all(Radius.circular(30)),
      color: base.isSelected?Colors.yellow.shade600:Colors.white,
    ),
    child: Center(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(base.img),
            )
        ),
      ),
    ),

  );
}
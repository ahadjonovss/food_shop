import 'package:flutter/material.dart';
import 'package:food_shop/models/tabBarModel.dart';
import 'package:food_shop/utils/database.dart';
import 'package:food_shop/utils/project_images.dart';
import 'package:food_shop/widgets/tab_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Container(
        padding: EdgeInsets.only(left: 20),
        child: Stack(
          children: [
            Positioned(
              top: 80,
                child: Text("Hi Zesan",style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 24),)), //Hi Falonchi
            Positioned(
                top: 120,
                child: Text("What do you want\nfor dinner?",style: TextStyle(color: Colors.black,fontSize: 24),)), //What do you..
            Positioned(
              right: 20,
                top: 60,
                child:Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    image: DecorationImage(
                      image: AssetImage(Images.account_logo),
                      fit: BoxFit.cover
                    )
                  ),
                ) ),
            Positioned(
              top: 200,
                child:Container(
                  height: 40,
                  width: 400,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => InkWell(
                      onTap:(){
                        setState(() {
                          for(int i=0;i<tabbarbase.length;i++){
                            tabbarbase[i].isSelected=false;
                          }
                          tabbarbase[index].isSelected=!tabbarbase[index].isSelected;
                        });
                      } ,
                        child: tab_container(tabbarbase[index])) ,
                  scrollDirection: Axis.horizontal,),
                ) ), //TabBar



          ],
        ),
      ),

    );
  }
}

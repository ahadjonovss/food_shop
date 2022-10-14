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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: 900,
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
              Positioned(
                right: 20,
                top: 300,
                  child:Container(
                    height: 220,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          width: 170,
                          child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                                right: 25,
                                top: -40,
                                child: Container(
                                  height: 120,
                                  width: 120,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Images.pizza_2),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                )),
                            Positioned(
                              top: 90,
                                left: 30,
                                child: Text("Something is here",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)),
                            Positioned(
                                top: 90,
                                left: 30,
                                child: Text("Something is here",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),))

                          ],
                      ),
                        ),
                      ]
                    ),

                  ) )



            ],
          ),
        ),
      ),

    );
  }
}

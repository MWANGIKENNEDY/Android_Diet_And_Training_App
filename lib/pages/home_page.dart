import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_diet_app/models/meals_model.dart';
import 'package:flutter_diet_app/widgets/mealcard.dart';

class HomePage extends StatelessWidget{

  final meals=Meals.myMeals();

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white70,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top:Radius.circular(40.0)),
        child: BottomNavigationBar(
          selectedIconTheme: IconThemeData(
            color: Colors.blue
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.deepOrange
          ),
          items: [
            BottomNavigationBarItem(icon: Icon(
              Icons.home
            ),
              title: Text("Home")
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.add
            ),
                title: Text("Discovery")
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.perm_contact_calendar
            ),
                title: Text("Contacts")
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: height*0.35,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40.0)
              ),
              child: Container(
                color: Colors.white12,
              ),
            ),
          ),
          Positioned(
            height:height*0.5 ,
            top: height*0.38,
            left: 0,
            right: 0,
            child: Container(
              height: height*0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 32,
                        bottom:8.0),
                    child: Text("MEALS FOR TODAY",style: TextStyle(fontSize: 13
                        ,fontWeight: FontWeight.w700,color: Colors.blueAccent),),
                  ),
                  Expanded(
                    child:ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                        scrollDirection: Axis.horizontal,
                        itemCount: meals.length,
                        itemBuilder: (context,index)=>
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:4.0),
                              child: MealCard(meal:meals[index]),
                            )
                    )
                  ),
                  SizedBox(height: 5,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 32,right: 32,bottom: 1),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),

                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}
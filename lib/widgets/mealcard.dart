
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_diet_app/models/meals_model.dart';

class MealCard extends StatelessWidget{

  final Meals meal;

  const MealCard({Key key, @required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Material(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                  child: Image.asset(
                    meal.imagePath,
                    width: 120,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 5,),
                      Text(meal.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey,
                            fontSize: 12),),
                      Text(meal.description,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 15),),
                      Row(
                        children: [
                          Icon(Icons.access_time,size: 15,),
                          Text(meal.timeTaken,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey,
                              fontSize: 12,),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
class Meals{

  String title,description,imagePath,timeTaken;
  Meals(this.title,this.description,this.timeTaken,this.imagePath);

  factory Meals.fromMap(Map<String,dynamic> json){
    return Meals(
      json["title"],
      json["description"],
      json["timeTaken"],
      json["imagePath"]
    );
  }

  static List<Meals> myMeals(){
    List<Meals> mealsDb=<Meals>[];
    mealsDb.add(Meals("BREAKFAST","Starterr diet","Morning","assets/ken.jpg"));
    mealsDb.add(Meals("BREAKFAST","Recharge diet","Noon","assets/ken.jpg"));
    mealsDb.add(Meals("BREAKFAST","Exercise diet","4 O'Clock","assets/ken.jpg"));
    mealsDb.add(Meals("BREAKFAST","Sleeppgg diet","9PM","assets/ken.jpg"));
    return mealsDb;
  }

}
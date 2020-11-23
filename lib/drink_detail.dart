import 'package:essential2/main.dart';
import 'package:flutter/material.dart';

class DrinkDetails extends StatelessWidget {
  final drink;

  const DrinkDetails({Key key, @required this.drink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [myColor, Colors.orange])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(drink["strDrink"]),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: drink["idDrink"],
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(drink["strDrinkThumb"]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Id ${drink["idDrink"]}",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "${drink["strDrink"]}",
                style: TextStyle(fontSize: 22, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

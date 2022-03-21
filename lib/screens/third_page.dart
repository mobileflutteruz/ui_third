import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "To Do List",
          style: TextStyle(color: Colors.blue, fontSize: 28),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: allInform("15 things to do", "General List", Colors.red),

          ),
          Container(
            child: allInform("12 wishes", "Wish List", Colors.deepOrange),
          ),
          Container(
            child: allInform("8 things places to go", "Go to List", Colors.green),
          ),
          Container(
            child: allInform("23 items to buy", "Shopping List", Colors.redAccent),
          ),

        ],
      ),
    );
  }

  Row allInform(String inform, String titles, Color shapeColor) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 30),
                child: Container(
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(
                    // image: DecorationImage(image: NetworkImage("https://source.unsplash.com/"), fit: BoxFit.cover),
                    color: shapeColor,
                  ),
                ),
              ),
              Column(
                
                children: [
                  Text(
                    "$titles",
                    style:
                        TextStyle(color: Colors.blue.shade800, fontSize: 25),
                  ),
                 Container(
                   width: 200,
                   child:  Text(
                    "You have $inform",
                    style:
                        TextStyle(color: Colors.cyan.shade800, fontSize: 20),
                  ),
                 ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("View"),
                  ),
                ],
              ),
            ],
          );
  }
}

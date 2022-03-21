import 'package:flutter/material.dart';

class circle_letter extends StatelessWidget {
  const circle_letter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("S", style: TextStyle(color: Colors.white),),

          Container(
         
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white, width: 2)),
            child: Text("M", style: TextStyle(color: Colors.white),),
          ),
           Container(
            
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white, width: 2)),
            child: Text("M", style: TextStyle(color: Colors.white),),
          ),
           Container(
         
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white, width: 2)),
            child: Text("M", style: TextStyle(color: Colors.white),),
          ),
          Text("T", style: TextStyle(color: Colors.white),),

           Container(
              
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white, width: 2)),
            child: Text("M"),
          ),
          Text("S"),
          



        ],
      ),
    );
  }
}
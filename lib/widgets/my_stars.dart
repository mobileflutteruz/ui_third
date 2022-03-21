import 'package:flutter/material.dart';

class MyStars extends StatelessWidget {
  const MyStars({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                      children:  const [
                       
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    );
  }
}

import 'package:dars8/widgets/my_stars.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Shopping",
          style: TextStyle(fontSize: 33, color: Colors.purple),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.person_pin, size: 40,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Cards(context, "Amanda, 26", "12"),
            Cards(context, "Elen,  31", "10"),
            Cards(context, "Ashley", "11"),
          ],
        ),
      ),
      backgroundColor: Colors.cyanAccent,
    );
  }

  Padding Cards(BuildContext context, String nameAge, String costs) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.blue.shade500,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://image.pngaaa.com/468/81468-middle.png"),
                            radius: 30,
                          ),
                          const SizedBox(
                            height: 30,
                            width: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "$nameAge",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                              const MyStars(),
                              // circle_letter(),
                              const Text("07:30 - 21:00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: [
                              Text(
                                "\$\ ${costs}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Text(
                                "Per hour",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    "About me:",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    child: const Text(
                      "Solum facilis ne vim, tractators petentium eos ei. An eum  auge liberavisse, cu movet mentitum eloquentiam.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const Center(
                    child: Chip(
                      label: Text(
                        "Add to sitlist",
                      ),
                      backgroundColor: Colors.red,
                      labelStyle: TextStyle(fontSize: 30, color: Colors.white),
                      elevation: 10,
                      shadowColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

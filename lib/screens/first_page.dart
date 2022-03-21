import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin {
  TabController? _tabController;
  int selectedIndex = 0;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.05,
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title:  Text("Shopping", style: TextStyle(fontSize: 30, color: Colors.blueAccent),),
            bottom: TabBar(
              labelStyle: TextStyle(
                  fontSize: 30,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold),
              controller: _tabController,
              labelColor: Colors.blue.shade900,
              indicatorWeight: 5,
              indicatorPadding: EdgeInsets.only(left: 16, right: 16),
              tabs: [
                Tab(
                  text: "Shops",
                ),
                Tab(
                  text: "Favorites",
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(((context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.95,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Cards(context, "Lorem Shop", "5.3"),
                    Cards(context, "Ipsum Shop", "4,2"),
                    Cards(context, "Dolor Shop", "3.7"),
                  ],
                ),
              );
            }), childCount: 1),
          ),
        
        
        ],
      ),
    );
  }

  Container Cards(BuildContext context, String title, String price) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.green,
            blurRadius: 2,
            offset: Offset(4, 8),
          ),
        ],
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 33,
            backgroundColor: Colors.red,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 60, left: 25),
                child: Text(
                  "$title",
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 100,
                width: 200,
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Text(
                  "Ad eam errem homero doming, veniam delet",
                  style: TextStyle(
                      color: Colors.blue.shade900.withOpacity(0.6),
                      fontSize: 15),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$price \$",
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "cashback",
                style: TextStyle(
                    color: Colors.blue.shade900.withOpacity(0.6), fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

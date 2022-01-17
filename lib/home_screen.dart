import 'package:center_source_ruz/bottom_nav_bar.dart';
import 'package:center_source_ruz/details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final title = [
      "Tortor Chair",
      "Morbi Chair",
      "Pretium Chair",
      "Blandit Chair"
    ];
    final Images = [
      'assets/images/image1.jpg',
      'assets/images/image2.png',
      'assets/images/image3.png',
      'assets/images/imag34.jpg'
    ];
    final price = ["256", "284", "232", "224"];
    final rating = ["4.5", "4.8", "4.3", "4.1"];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Top Rated",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.filter_1_outlined,
                  color: Colors.grey,
                  size: 15,
                ))
          ],
          bottom: TabBar(
            // unselectedLabelColor: Colors.black,
            // unselectedLabelStyle: TextStyle(color: Colors.red),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0), color: Colors.white),
            tabs: [
              Tab(
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.chair),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Armschair",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bed,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Bed",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.light,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Lamps",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("147 products"),
                  Row(
                    children: [
                      Text("Most popular"),
                      Icon(Icons.arrow_downward)
                    ],
                  )
                ],
              ),
            ),
            GridView.builder(
              itemCount: 4,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            image: Images[index],
                            price: price[index],
                            title: title[index],
                            rating: rating[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.grey[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              Images[index],
                              height: 100,
                              width: 100,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("${title[index]}"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                            color: Colors.yellowAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text("${price[index]}"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text("${rating[index]}"),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Icon(Icons.home),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Icon(Icons.search),
                    ),
                    SizedBox(
                      width: size.width * 0.10,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Icon(Icons.settings),
                    ),
                    MaterialButton(onPressed: () {}, child: Icon(Icons.person))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

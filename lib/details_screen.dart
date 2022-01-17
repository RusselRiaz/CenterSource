import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String image;
  String price;
  String title;
  String rating;
  DetailScreen(
      {Key? key,
      required this.image,
      required this.price,
      required this.title,
      required this.rating})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.image), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
                bottom: 30,
                left: 10,
                child: Card(
                  child: Container(
                    height: 100,
                    width: size.width * 0.93,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage(widget.image),
                            ),
                            Column(
                              children: [
                                Text(
                                  widget.title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '\$ ',
                                          style: TextStyle(
                                              color: Colors.yellowAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Text(widget.price),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(widget.rating),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: Icon(Icons.arrow_forward),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
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
    );
  }
}

import 'package:flutter/material.dart';

class HambergersList extends StatefulWidget {
  const HambergersList({
    Key? key,
    required this.row,
  }) : super(key: key);
  final int row;
  
  @override
  _HambergersListState createState() => _HambergersListState();
}

class _HambergersListState extends State<HambergersList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    Widget baconImage = Container(
      height: 110,
      width: 200,
      child: Image.asset(
        "assets/burger.jpg",
      ),
    );
    Widget chickenImage = Container(
      height: 125,
      width: 200,
      child: Image.asset(
        "assets/chickenBurger.jpg",
      ),
    );
    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: ListView.builder(
          itemCount: items,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            bool reverse = index.isEven;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: index == items ? 20 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      ;
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Burger",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "15,95\$ CAN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 45,
                                  height: 45,
                                  child: Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(14),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 60 : 60,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      ;
                    },
                    child: reverse ? chickenImage : baconImage,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

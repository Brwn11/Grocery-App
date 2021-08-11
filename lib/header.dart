import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: size.height / 5,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(45),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white70,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/mills.jpg",
                                ),
                                radius: 32,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Millie Bobby Brown",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                  ),
                                  child: Text(
                                    "Diamond Member",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "154 \$ CAN",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 50,
                  width: size.width,
                  child: Card(
                    color: Colors.white,
                    elevation: 3,
                    margin: EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "What are you hungry for ?",
                        suffixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.only(
                          left: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

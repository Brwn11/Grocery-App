import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIcon = 0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    margin: EdgeInsets.only(
                      left: index == 0 ? 20 : 0,
                      right: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIcon = index;
                        });
                      },
                      child: Card(
                        color: index == selectedIcon
                            ? Colors.black.withOpacity(0.7)
                            : Colors.white,
                        child: Icon(
                          Icons.fastfood_rounded,
                          color: index == selectedIcon
                              ? Colors.white
                              : Colors.black.withOpacity(
                                  0.7,
                                ),
                        ),
                        elevation: 4,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 90,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 20 : 0,
                    right: 10,
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Text("Burger"),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

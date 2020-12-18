import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui_travelingapp/models/dataMode.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List hotels = [
    DataModel(
        imgUrl: 'assets/images/hotel1.jpeg',
        name: 'Tandoori Hotel',
        price: 500,
        rating: 4.5),
    DataModel(
        imgUrl: 'assets/images/hotel2.jpeg',
        name: 'Chapathi Hotel',
        price: 500,
        rating: 4.9),
    DataModel(
        imgUrl: 'assets/images/hotel2.jpeg',
        name: 'Tandoori Hotel',
        price: 500,
        rating: 4.9)
  ];

  List foods = [
    DataModel(
        imgUrl: 'assets/images/food1.jpeg',
        name: 'Indian Recipes',
        price: 50,
        rating: 4.5),
    DataModel(
        imgUrl: 'assets/images/food2.jpeg',
        name: 'Eastern,Baiti Telford',
        price: 10,
        rating: 4.0),
    DataModel(
        imgUrl: 'assets/images/food2.jpeg',
        name: 'Eastern,Baiti Telford',
        price: 10,
        rating: 4.0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/background.jpeg'))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    child: IconButton(
                      padding: EdgeInsets.only(left: 8),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      onPressed: null,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'India',
                              textScaleFactor: 1.0,
                              style: GoogleFonts.lato(
                                  fontSize: 35,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Container(
                              width: 60,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text('4.5'), Icon(Icons.star)],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 250),
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        child: Container(
                          color: Colors.white,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Best Hotels',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'See All',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        for (DataModel data in hotels)
                                          Card(
                                            elevation: 0,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 150,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              data.imgUrl))),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  data.name,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                    'Starting from ${data.price}'),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '${data.rating}',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                      Icons.star_border,
                                                      size: 15,
                                                      color: Colors.amber,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                      ],
                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Populer Foods ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'See All',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        for (DataModel data in foods)
                                          Card(
                                            elevation: 0,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 150,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              data.imgUrl))),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  data.name,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                    'Starting from ${data.price}'),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '${data.rating}',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                      Icons.star_border,
                                                      size: 15,
                                                      color: Colors.amber,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

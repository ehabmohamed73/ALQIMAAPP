import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: const Drawer(
          backgroundColor: const Color(0xFF0B1C2B),
        ),
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(color: Color(0xFF0B1C2B)),
            ),
            Positioned(
                top: 70,
                right: 0,
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              child: Icon(
                            Icons.menu_sharp,
                            size: 30,
                            color: Color(0xFFDFCC23),
                          )),
                          Container(
                              child: Icon(
                            Icons.draw_rounded,
                            color: Color(0xFFDFCC23),
                          ))
                        ]),
                  ),
                )),
            Positioned(
              width: MediaQuery.of(context).size.width,
              height: 140,
              right: 20,
              top: 200,
              child: Container(
                  child: Column(
                children: [
                  Container(
                    child: Text("مرحبا بكم في اسراحة",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 100),
                    child: Text("القــمـة",
                        style: TextStyle(
                            color: Color(0xFFDFCC23),
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )),
            ),
            Positioned(
                top: 350,
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "احجز غرفتك الان",
                    style: TextStyle(
                      color: Color(0xFFDFCC23),
                      fontSize: 30,
                    ),
                  ),
                )),
            Positioned(
              width: MediaQuery.of(context).size.width,
              height: 300,
              top: 500,
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: PageView(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage("images/home/1.jpg"),
                                  fit: BoxFit.cover,
                                )),
                            width: 350,
                          ),
                          Positioned(
                            bottom: 0,
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "الغرفة الاولى",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("محجوزة",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17)),
                                        Icon(
                                          Icons.check_outlined,
                                          color: Color(0xFFDFCC23),
                                          size: 17,
                                        )
                                      ],
                                    )
                                  ]),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

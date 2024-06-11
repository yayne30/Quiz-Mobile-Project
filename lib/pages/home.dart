import 'dart:math';

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/pages/question.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final List<Map<String, String>> items = [
  //   {"image": "images/animals.jpg", "text": "እንስሳት"},
  //   {"image": "images/math.png", "text": "ሒሳብ"},
  //   {"image": "images/music.png", "text": "ሙዚቃ"},
  //   {"image": "images/animals.jpg", "text": "ቅርስ"},
  //   {"image": "images/flag.jpg", "text": "ባንዲራ"},
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 252, 243),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 220,
                    padding: EdgeInsets.only(left: 20.0, top: 35.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 156, 102, 14),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          Image.asset(
                            "images/user.png",
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Eyerusalem ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.only(top: 120, left: 20, right: 20),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "images/quiz.jpg",
                            fit: BoxFit.cover,
                            height: 200,
                            width: 350,
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top: 70, left: 160),
                              child: Column(
                                children: [
                                  Text(
                                    "ያሸነፉ🏆ይሸለሙ ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    " ምስሎቹን በመገመት ጥያቄዎችን ይጫወቱ",
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 30, 30, 30),
                                        fontSize: 19.0,
                                        wordSpacing: sqrt1_2),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "ቀዳሚ ምርጫዎች",
                  style: TextStyle(
                      color: Color.fromARGB(255, 36, 32, 3),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Question(category: "Countries")));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 10.0,
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.all((10)),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/animals.jpg",
                                height: 120,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "hello",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 50, 48, 30),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )]
                  ),
                ),
                 Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Question(category: "ቅርስ")));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 10.0,
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.all((10)),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/animals.jpg",
                                height: 120,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "hello",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 50, 48, 30),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )]
                  ),
                ),
                 Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Question(category: "Countries")));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 10.0,
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.all((10)),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/animals.jpg",
                                height: 120,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "hello",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 50, 48, 30),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )]
                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}

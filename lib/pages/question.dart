import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz/service/database.dart';

class Question extends StatefulWidget {
  final String category;
  Question({required this.category});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  bool show = false;
  Stream<QuerySnapshot>? QuizStream;

  @override
  void initState() {
    super.initState();
    getontheload();
  }

  getontheload() async {
    QuizStream = await DatabaseMethods().getCategoryQuiz(widget.category);
    setState(() {});
  }

  PageController controller = PageController();

  Widget allQuiz() {
    return StreamBuilder(
        stream: QuizStream,
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No data found'));
          }

          return PageView.builder(
            controller: controller,
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot ds = snapshot.data!.docs[index];
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          ds["image"],
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        show = true;
                        setState(() {});
                      },
                      child: show
                          ? Container(
                              
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color:ds["correct"] == ds["option1"]
                                          ? Colors.green
                                          : Colors.red ,
                                  border: Border.all(
                                      color: ds["correct"] == ds["option1"]
                                          ? Colors.green
                                          : Colors.red)),
                              child: Text(
                                ds["option1"],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          : Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: Text(
                                ds["option1"],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                    ),
                    SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        show = true;
                        setState(() {
                          
                        });
                      },
                      child:show ? Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color:ds["correct"] == ds["option2"]
                                          ? Colors.green
                                          : Colors.red ,
                            border: Border.all( color:ds["correct"] == ds["option2"] ?Colors.green: Colors.red)),
                        child: Text(
                          ds["option2"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ):
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Text(
                          ds["option2"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
              SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        show = true;
                        setState(() {
                          
                        });
                      },
                      child:show ? Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          
                            color:ds["correct"] == ds["option3"]
                                          ? Colors.green
                                          : Colors.red ,
                            border: Border.all( color:ds["correct"] == ds["option3"] ?Colors.green: Colors.red)),
                        child: Text(
                          ds["option3"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ):
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                           
                            border: Border.all(color: Colors.grey)),
                        child: Text(
                          ds["option3"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                   SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        show = true;
                        setState(() {
                          
                        });
                      },
                      child:show ? Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                      
                        decoration: 
                        BoxDecoration(
                            color:ds["correct"] == ds["option4"]
                                          ? Colors.green
                                          : Colors.red ,
                      
                            border: Border.all( color: ds["correct"] == ds["option4"] ? Colors.green: Colors.red)),
                        child: Text(
                          ds["option4"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ):
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Text(
                          ds["option4"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),

                    ),
                    GestureDetector(
                      onTap: () {
                        show = false;

                        controller.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.green,
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.0, left: 20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(60)),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 100.0),
                  Text(
                    widget.category,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(child: allQuiz()),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart' ;

/////// ملااااااحظة ,,, لو حولت الكوليوم الى ليست فيو , تصبح افضل و بقدر اعمل سكرول في الشاشة
///// لو بدي اعمل سكرول افقي مثل ستوريات الانستا بستخدم : سينجل سكرول فيو
////// expanded  يحل لي مشكلة العناصر الزائدة عن حجم الشاشة
class MyApp extends StatefulWidget {
  // const MyApp({super.key});

  final String team1name ;
  final String team2name ;
  const MyApp({required this.team1name , required this.team2name});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int a = 0;
  int b = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Basket Ball Counter",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: ListView(
          //// عشان اعمل سكرول عمودي
          children: [
            SingleChildScrollView(
              //// عشان اعمل سكرول افقي
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                    // Team A
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${widget.team1name}", style: TextStyle(fontSize: 43)),
                        Text("$a", style: TextStyle(fontSize: 210)),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(200, 50),
                            backgroundColor: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              a += 1;
                            });
                          },
                          child: Text("Add one point", style: TextStyle(color: Colors.black)),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(200, 50),
                            backgroundColor: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              a += 2;
                            });
                          },
                          child: Text("Add two points", style: TextStyle(color: Colors.black)),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(200, 50),
                            backgroundColor: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              a += 3;
                            });
                          },
                          child: Text("Add three points", style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),

                  SizedBox(width: 10),

                    // Team B
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${widget.team2name}", style: TextStyle(fontSize: 43)),
                        Text("$b", style: TextStyle(fontSize: 210)),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(200, 50),
                            backgroundColor: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              b += 1;
                            });
                          },
                          child: Text("Add one point", style: TextStyle(color: Colors.black)),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(200, 50),
                            backgroundColor: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              b += 2;
                            });
                          },
                          child: Text("Add two points", style: TextStyle(color: Colors.black)),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(200, 50),
                            backgroundColor: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              b += 3;
                            });
                          },
                          child: Text("Add three points", style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                ],
              )
            ),


            SizedBox(height: 110),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
                backgroundColor: Colors.white70,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                setState(() {
                  a = 0;
                  b = 0;
                });
              },
              child: Text("Restart", style: TextStyle(color: Colors.black, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

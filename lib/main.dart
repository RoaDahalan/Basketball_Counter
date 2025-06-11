import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Team A
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Team A", style: TextStyle(fontSize: 43)),
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

                // Team B
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Team B", style: TextStyle(fontSize: 43)),
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
            ),

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




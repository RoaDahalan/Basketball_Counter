import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roaa_project/MyApp.dart';

class Names extends StatefulWidget{
  const Names({super.key}) ;
  @override
  State<Names> createState() => _SetNames ();

}

class _SetNames extends State<Names> {
  // important ///////////////////////
  TextEditingController firstTeamController = TextEditingController();
  TextEditingController secondTeamController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  // important ////////////////////
                  controller: firstTeamController,
                  decoration: InputDecoration(
                      labelText: "First Team",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )
                  ),
                ),

                SizedBox(height: 20,),
                TextField(
                  // important ////////////////////
                  controller: secondTeamController,
                  decoration: InputDecoration(
                      labelText: "Second Team",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )
                  ),
                ),

                SizedBox(height: 40,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {

                      String team1 = firstTeamController.text;
                      String team2 = secondTeamController.text;

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp(team1name : team1 , team2name : team2)));
                    },
                    child: Text("Next"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
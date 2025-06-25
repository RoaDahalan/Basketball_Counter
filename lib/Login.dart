import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roaa_project/Names.dart';

class Login extends StatefulWidget {
  const Login({super.key}) ;

  @override
  State<Login> createState() => _LoginPageState();

}

class _LoginPageState  extends State<Login>{
  @override
  bool securePassword = true ;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Text("LOGIN" , style: TextStyle(fontSize: 30 , color: Colors.deepOrange),) ,
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Enter your email",
                      hintText: "example@gmail.com",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )
                  ),
                ),
          
                SizedBox(height: 30,),
                TextField(
                  obscureText: securePassword,
                  decoration: InputDecoration(
                    labelText: "Enter your password",
                    hintText: "**************",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          securePassword = !securePassword;
                        });
                      },
                      icon: Icon(
                        securePassword ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),


                SizedBox(height: 40,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.orangeAccent ,
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Names()));
                    },
                    child: Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[

                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 100.0, 0.0, 0.0),

                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 50.0, //fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 160.0, 0.0, 0.0),

                  child: Text(
                    "There",
                    style: TextStyle(
                        fontSize: 60.0,fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(165, 160.0, 0.0, 0.0),

                  child: Text(
                    ".",
                    style: TextStyle(
                        fontSize: 60.0,fontWeight: FontWeight.bold,color: Colors.green,
                    ),
                  ),
                )

              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 40.0,left: 25.0,right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: "E mail",
                    labelStyle: TextStyle(
                      height: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    )
                  ),
                ),
                SizedBox(height: 25.0,),

                TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        height: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      )
                  ),
                ),
                SizedBox(height: 10.0,),

                Container(
                  alignment: Alignment(1,0),
                  padding: EdgeInsets.only(top: 10.0,left: 230.0),

                  child: InkWell(
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough,
                      ),
                    )
                  ),
                ),
                SizedBox(height: 60.0),

                Container(

                  height: 45.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,

                    child: GestureDetector(
                      onTap: (){


                      },
                      child: Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                ),

                SizedBox(height: 30.0),

                Container(
                  height: 45.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          //child:ImageIcon(AssetImage("")),
                        ),
                        Center(
                          child: Text("Login With Google",
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                            color: Colors.black,
                          ),
                          ),

                        )
                      ],
                    ),
                  ),

                )

              ],

            ),
          ),
          SizedBox(height: 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("New To Spotify  ?",
              style: TextStyle(

              ),),

              SizedBox(width: 5.0),
              InkWell(
                child: Text("Register",
                style:TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  //decoration: TextDecoration.underline,
                )),
              )
            ],
          )
        ],
      ),

    );
  }
}

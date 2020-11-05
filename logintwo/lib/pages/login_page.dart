import 'package:flutter/material.dart';
import 'package:logintwo/model/login_model.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  bool hidePassword = true;
  LoginRequestModel requestModel;

  @override
  void initState(){
    super.initState();
    requestModel = new LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 270,),
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0) ,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.lightBlueAccent,blurRadius: 1)
                    ]

                  ),
                  
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 25,),
                        Text("Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.green,
                        ),
                        ),
                        SizedBox(height:20 ,),

                        new TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          onSaved:(input) => requestModel.username = input,
                          //validator: (input)=> !input.contains("@")? "Email ID Should be valid":null,
                          decoration: new InputDecoration(
                            hintText: "Email address",
                             prefixIcon: Icon(Icons.email,color: Colors.black,),

                          ),
                        ),
                        SizedBox(height: 20.0,),

                        new TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (input)=>requestModel.password = input,
                          validator: (input)=> input.length < 3? "Password Must Contain Atleast 3 Character":null,
                          obscureText: hidePassword,
                          decoration: new InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                              color:Colors.black.withOpacity(.4),
                              icon: Icon(hidePassword?Icons.visibility_off:Icons.visibility),
                            ),

                          ),
                        ),

                        SizedBox(height: 40.0,),

                        FlatButton(

                          height: 10,
                          shape: StadiumBorder(),
                          onPressed: (){
                            if(validateAndSave()){
                              print(requestModel.toJason());
                            }
                          },
                          child: Text("Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.greenAccent,
                          ),),
                          padding:  EdgeInsets.symmetric(vertical: 12,horizontal: 80) ,
                        color: Colors.black,

                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );

  }
  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if(form.validate()){
      form.save();
      return true;

    }
    return false;
  }
}

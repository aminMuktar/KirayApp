import 'package:flutter/material.dart';
import './sign_up.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class Loginwidget extends StatefulWidget {
  const Loginwidget({Key? key}) : super(key: key);

  @override
  State<Loginwidget> createState() => _LoginwidgetState();
}

class _LoginwidgetState extends State<Loginwidget> {

  //formkey which will be used for validating email and password when the user clicks on login button

  final _formKey=GlobalKey<FormState>();
  
  //Editing Controller
  final TextEditingController emailController=new TextEditingController();
  final TextEditingController passwordController=new TextEditingController();


  @override
  Widget build(BuildContext context) {
    //email field
    final emailField=TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
        emailController.text=value!;

      },
      textInputAction: TextInputAction.next,
      validator: (String?  value){
        if(value != null && value.isEmpty){
          return "this field is required";
        }
        else{
          return null;
        }
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        )
      ),
    );
    //password field
    final passwordField=TextFormField(
        autofocus: false,
        controller: passwordController,
        onSaved: (value){
          passwordController.text=value!;

        },
      obscureText: true,
        textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key_sharp),
          contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )
      ),
    );

    final loginButton=Material(
      elevation: 5,
      color: Colors.green,
      shadowColor: Colors.green,
      borderRadius: BorderRadius.circular(5),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(18,15,18,15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          validate,
        },
        child: Text("Log in",style: TextStyle(color: Colors.white,fontSize: 20,),),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        leading: IconButton(
          iconSize: 40,
          onPressed: () {
            Navigator.pop(context);
          },
        icon: Icon(Icons.clear_sharp),
        ),
        backgroundColor: Colors.white,

        ),
      body: Center(

        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // placeholder for google signin
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SignInButton(
                            Buttons.Google,
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SignInButton(
                            Buttons.Apple,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child:Divider(
                          color: Colors.black,
                        ),
                    ),
                    Text("or",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    Expanded(
                        child: Divider(
                          color: Colors.black,
                        ),
                    ),
                  ],
                ),
                    SizedBox(
                      height: 60,
                    ),
                    emailField,
                    SizedBox(
                      height: 30,
                    ),
                    passwordField,
                    SizedBox(
                      height: 30,
                    ),
                    loginButton,
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?"),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                          },
                          child: Text(" Sign Up",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.lightGreen),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }
}




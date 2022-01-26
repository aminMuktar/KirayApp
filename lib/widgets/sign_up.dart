import 'package:flutter/material.dart';
import 'package:untitled/widgets/login_widget.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey=GlobalKey<FormState>();

  //Editing Controller
  final TextEditingController emailController=new TextEditingController();
  final TextEditingController passwordController=new TextEditingController();
  final TextEditingController username=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final usernameField=TextFormField(
      autofocus: false,
      controller: username,

      keyboardType: TextInputType.text,
      onSaved: (value){
        username.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )
      ),
    );

    final emailField=TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
        emailController.text=value!;

      },
      textInputAction: TextInputAction.next,
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
          prefixIcon: Icon(Icons.vpn_key),
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

        },
        child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 20,),),
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

                    RichText(
                      text: TextSpan(
                        text:  "Sign Up with Email",
                        style: TextStyle( fontSize: 30, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    usernameField,
                    SizedBox(
                      height: 20,
                    ),
                    emailField,
                    SizedBox(
                      height: 20,
                    ),
                    passwordField,
                    SizedBox(
                      height: 20,
                    ),
                    loginButton,
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an account?"),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Loginwidget()));
                          },
                          child: Text(" Log in",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.lightGreen),),
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




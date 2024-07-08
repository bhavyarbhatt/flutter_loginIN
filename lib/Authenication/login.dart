import 'package:auto_login/Authenication/signUp.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

// Texting Contoller
  final username = TextEditingController();
  final password = TextEditingController();
  bool isVisible = false;

// We have to global key for our form
final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Image.asset(
                    "lib/assets/img.jpg",
                    width: 210,
                    ),
              
                  SizedBox(
                    height: 15,
                  ),  
              
              //Username
                  Container(
                    
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 89, 70, 122).withOpacity(.1)
                    ),
                    child: TextFormField(
                      controller: username,
                      validator: (value) {
                        if(value!.isEmpty){
                          return "username is required";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "Username"
                        // label: Text("Username")
                      ),
                    ),
                  ),
              
                  //Password
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 89, 70, 122).withOpacity(.1)
                    ),
                    child: TextFormField(
                      controller: password,
                      validator: (value) {
                        if(value!.isEmpty){
                          return "password is required";
                        }
                        return null;
                      },
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              // toogle to turn off and on
                            isVisible = !isVisible;  
                            });
                            //In here we will create a click to show and hide the password a toggle button
                          },
                          icon: Icon( isVisible? Icons.visibility : Icons.visibility_off ),
                        )
                        ),
                    ),
                  ),
              
                  SizedBox(
                    height: 10,
                  ),
              
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(  
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurple
                    ),
                    child: TextButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                           
                        }
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                    ),
                  ),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have a account?"),
                      TextButton(
                        onPressed: (){
                           //Navigator to SignUp Page
                           Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp()
                           ));

                        }, 
                        child: Text('Sign Up')
                        )
                    ],
                  )
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
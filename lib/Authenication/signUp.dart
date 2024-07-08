import 'package:auto_login/Authenication/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final username = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  
  final formKey = GlobalKey<FormState>();
  bool isVisible= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Form(
                  key: formKey,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        ListTile(
                          title: Text(
                            "Register New Account",
                            style: TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                               
                            ),
                          ),
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
                    
   //Confrom Password
                        Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 89, 70, 122).withOpacity(.1)
                          ),
                          child: TextFormField(
                            controller: confirmPassword,
                            validator: (value) {
                              if(value!.isEmpty){
                                return "password is required";
                              }else if(password.text != confirmPassword.text){
                                return "Passwords dno't match";
                              } 
                              return null;
                            },
                            obscureText: !isVisible,
                            decoration: InputDecoration(
                              icon: Icon(Icons.lock),
                              border: InputBorder.none,
                              hintText: "Conform Password",
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
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                          ),
                        ),
                    
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have a account?"),
                            TextButton(
                              onPressed: (){
                                Navigator.push(
                                  context, MaterialPageRoute(
                                    builder: (context)=> LoginScreen(),
                                    ) 
                                  );
                              }, 
                              child: Text('Login')
                              )
                          ],
                        )
                    
                      ],
                    ),
                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pet_adoption_project/Colors/colors.dart';
import 'package:pet_adoption_project/screens/HomeScreen/homescreen.dart';
import 'package:pet_adoption_project/screens/RegistrationScreen/registerationscreen.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController(); 

  void loginAdopter(String email,String password

) async {
  final url = 'http://campus.sicsglobal.co.in/Project/pet_shop/api/login.php';

  Map<String, String> body = {
  'email':email,
  'password':password
   
  };

  try {
    final response = await http.post(
      Uri.parse(url),
      body: body,
      
    );
    var jsonData=json.decode(response.body);

    if (response.statusCode == 200) {
      if(jsonData['status']==true){
          ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text('Login Successful!',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          duration: Duration(seconds: 4),
        ),
      );
      Navigator.push(context,MaterialPageRoute(builder:(context)=>Example()));
      print(body);
      print("Response body${response.body}");
    
      print('Login successful');
      }
      else{
        jsonData['status']==false;
         print('Error: ${response.statusCode}');
      }
     
    } else {
      
     print('fffff');
    }
  } catch (error) {
    print('Error: $error');
  }
}


  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
         decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/logoimage.jpg'),fit: BoxFit.cover)),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'LOGIN',
                      style: TextStyle(  
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: size.height * 0.06),  
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          hintText: 'Username',
                       
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                        ),
                        style: const TextStyle(color: Colors.white),
                         validator: (value) {
                            if(value!.isEmpty){
                              return 'Please enter your email';
                            }
                          },
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: passwordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                        ),
                        style: const TextStyle(color: Colors.white),
                         validator: (value) {
                            if(value!.isEmpty){
                              return 'Please enter your password';
                            }
                          },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Checkbox(
                              
                              activeColor: Colors.blue,
                              value: _isChecked,
                              onChanged: (value) {
                                setState(() {
                                _isChecked = !_isChecked;
                                });
                              },
                            ),
                            GestureDetector(
                              onTap: () => print("Remember me"),
                              child: const Text(
                                "Remember me",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                        const Text(
                          "Forgot password ?",
                          style: TextStyle(
                              
                           
                              color: Colors.blue, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    ElevatedButton(
                      onPressed: ()async {
                        if (_formKey.currentState!.validate()) {
                                  loginAdopter(
                       emailcontroller.text.toString(),
                       passwordcontroller.text.toString(),
                     
                
                 );


                  //  await Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //       builder: (_) => LoginPage(),
                  //     ))
                      ;}
                       
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.transparent),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 50.0),
                      ),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don t have a an account',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        TextButton(onPressed: ()async{
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>const RegisterPage()));
                        }, child:Text('Register',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold))),
                      ],
                    )
                    // SizedBox(height: 30),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 20),
                    //   child: ElevatedButton(
                    //                       onPressed: () {
                    //                         Navigator.push(context,MaterialPageRoute(builder:(context)=>const RegisterPage()));
                    //                        // _onSavePressed();
                    //                       },
                    //                       style: ElevatedButton.styleFrom(
                    //                         backgroundColor: Colors.transparent,
                    //                         shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(18.0),
                    //   side: const BorderSide(color: Colors.transparent),
                    //                         ),
                    //                         padding: const EdgeInsets.symmetric(
                    //     vertical: 15.0, horizontal: 50.0),
                    //                       ),
                    //                       child: Row(
                    //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //                         children: [
                    //    Image.asset('assets/google.png',height: 30,width: 30,),
                    //    Text(
                    //     'Continue with Google',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 14.0,
                    //       fontWeight: FontWeight.bold
                    //     ),
                    //   ),
                    //                         ],
                    //                       ),
                    //                     ),
                    // ),
                    // SizedBox(height: 12.0,),
                    //                     Padding(
                    //                       padding: const EdgeInsets.symmetric(horizontal: 20),
                    //                       child: ElevatedButton(
                    //                       onPressed: () {
                    //                         Navigator.push(context,MaterialPageRoute(builder:(context)=>Example()));
                    //                        // _onSavePressed();
                    //                       },
                    //                       style: ElevatedButton.styleFrom(
                    //                         backgroundColor: Colors.transparent,
                    //                         shape: RoundedRectangleBorder(
                    //                                         borderRadius: BorderRadius.circular(18.0),
                    //                                         side: const BorderSide(color: Colors.transparent),
                    //                         ),
                    //                         padding: const EdgeInsets.symmetric(
                    //                                           vertical: 15.0, horizontal: 50.0),
                    //                       ),
                    //                       child:  Row(
                    //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //                         children: [
                    //                                         Image.asset(
                    //                                           'assets/fb.png',height: 28,width: 20,
                    //                                         ),
                    //                                         Text(
                    //                                           'Continue with Facebook',
                    //                                           style: TextStyle(
                    //                                             color: Colors.white,
                    //                                             fontSize: 14.0,
                    //                                             fontWeight: FontWeight.bold
                    //                                           ),
                    //                                         ),
                    //                         ],
                    //                       ),
                    //                                                           ),
                    //                     )
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

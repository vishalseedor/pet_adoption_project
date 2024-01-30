import 'package:flutter/material.dart';
import 'package:pet_adoption_project/Colors/colors.dart';
import 'package:pet_adoption_project/screens/GetstartedScreen/getstartedscreen.dart';
import 'package:pet_adoption_project/screens/HomeScreen/homescreen.dart';
import 'package:pet_adoption_project/screens/LoginScreen/loginscreen.dart';
import 'package:pet_adoption_project/screens/ViewPetsScreen/petnewviewscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

    _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
   // backgroundColor:purpleColor,
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(image:AssetImage('assets/BN.jpg'),fit: BoxFit.cover)
        ),
        // child:Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Center(child: Image.asset('assets/petlogo.png',height: 400,width: 400,)),
        //   //  const Center(child: Text('Pet Adoption Center',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))
        //   ],
        // ),
      ),
    );
  }
}
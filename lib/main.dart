import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption_project/ApiProvider/AllPetProvider/allpetScreen.dart';
import 'package:pet_adoption_project/ApiProvider/AllPetProvider/petprovider.dart';
import 'package:pet_adoption_project/ApiProvider/RegisterAPI/registerapi.dart';
import 'package:pet_adoption_project/Drawer/new_drawerscreen.dart';
import 'package:pet_adoption_project/screens/SplashScreen/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (context) => PetProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
         textTheme: GoogleFonts.montserratTextTheme(),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          
        ),
        home:const SplashScreen(),
        routes: {
           'all_pet_screen': (context) => const AllPetScreen()
        },
      ),
    );
  }
}



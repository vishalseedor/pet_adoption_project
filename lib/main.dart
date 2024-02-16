import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption_project/Colors/colors.dart';

import 'package:pet_adoption_project/screens/PetDetailsScreen/petdetailscreen.dart';
import 'package:pet_adoption_project/screens/SplashScreen/splashscreen.dart';


import 'package:provider/provider.dart';

import 'ApiProvider/AllPetProvider/allpetScreen.dart';
import 'ApiProvider/AllPetProvider/petprovider.dart';

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
        title: 'Pet Adoption Center',
        theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
          colorScheme: ColorScheme.fromSeed(seedColor:purpleColor),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        routes: {
          
          'all_pet_screen': (context) => const AllPetScreen(),
         'pets_details_screen': (context) {
    String id = ModalRoute.of(context)!.settings.arguments.toString();
    return PetDetailsScreen(
      id: id,
    );
  },
          },
      ),
    );
  }
}

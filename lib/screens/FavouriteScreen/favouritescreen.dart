import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_adoption_project/Colors/colors.dart';

class PetFavouritePage extends StatefulWidget {
  const PetFavouritePage({super.key});

  @override
  State<PetFavouritePage> createState() => _PetFavouritePageState();
}

class _PetFavouritePageState extends State<PetFavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: purpleColor,
        title: const Text('Favouitres',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
      ),
    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
     itemBuilder:(context, index) {
       return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
         child: Card(
  // height: 200,
  // width: 200,
  color: Colors.grey[200],
  child: Stack(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/pet_dog.png',scale: 3,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bruno',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('₹ 100.0',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
              ],
            ),
              Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.location_on,color: purpleColor,),
                Text('NorthShore(2km)',style: TextStyle(fontWeight: FontWeight.w900),),
              ],
            ),
              Text('Female 2 Years',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey),),
          ],
        ),
      ),
      Positioned(
        top: 10, // Adjust this value to position the icon as per your requirement
        right: 10, // Adjust this value to position the icon as per your requirement
        child: CircleAvatar(
          radius: 14,
          backgroundColor: Colors.grey[400],
          child: Icon(
            Icons.favorite,
            color: Colors.red, // Customize the color of the favorite icon
            size: 18, // Customize the size of the favorite icon
          ),
        ),
      ),
    ],
  ),
),

       );
     },),
    );
  }
}
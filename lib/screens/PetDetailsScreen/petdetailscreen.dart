import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pet_adoption_project/Colors/colors.dart';

class PetDetailsScreen extends StatefulWidget {
  const PetDetailsScreen({super.key});

  @override
  State<PetDetailsScreen> createState() => _PetDetailsScreenState();
}

class _PetDetailsScreenState extends State<PetDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(onPressed: (){
         Navigator.pop(context); 
        }, icon:const Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: purpleColor,
        title: const Text('Pet Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset('assets/new.jpg'),
                
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('German Shepherd',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                  Text('₹ 40.00',style: TextStyle(color: purpleColor,fontWeight: FontWeight.w900,fontSize: 18),),
                  
                ],
              ),
              Row(
                children: [
                  Icon(LineIcons.mapMarker),
                  SizedBox(width: 5),
                  Text('Season Cateory(3 km)')
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age',style: TextStyle(color:purpleColor,fontWeight: FontWeight.w500),),
                      Text('1.5 Years',style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                  ),
                   Container(
                height: 80,
                width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.white
              ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Gender',style: TextStyle(color:purpleColor,fontWeight: FontWeight.w500),),
                      Text('Female',style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
              ),
               Container(
                height: 80,
                width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.white
              ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight',style: TextStyle(color:purpleColor,fontWeight: FontWeight.w500),),
                      Text('3.5',style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
              ),
                ],
              ),
              SizedBox(height: 10),
              Text('Description',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
              SizedBox(height: 6,),
              Text('The German Shepherd Dog, often known simply as the German Shepherd, is a highly intelligent and versatile breed. Originally developed in Germany for herding sheep, they have become one of the most popular and recognizable dog breeds worldwide. '),
             SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Container(
                  height: 55,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),border: Border.all(color:purpleColor)),
                    child: Icon(Icons.favorite_outline,color:purpleColor,),
                 ),
                  Container(
                  height: 55,
                  width: 270,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('Adopt Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),)),
                 ),
                ],
              )
               
              
            ],
          ),
        ),
      ),
    );
  }
}
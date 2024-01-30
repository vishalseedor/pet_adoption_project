import 'package:flutter/material.dart';
import 'package:pet_adoption_project/Colors/colors.dart';

class MyAdoptionRequestPage extends StatefulWidget {
  const MyAdoptionRequestPage({super.key});

  @override
  State<MyAdoptionRequestPage> createState() => _MyAdoptionRequestPageState();
}

class _MyAdoptionRequestPageState extends State<MyAdoptionRequestPage> {
  @override
  final List<String>_images=[
    'assets/pet_dog.png',
    'assets/pet_rabbit.png',
    'assets/pet_cat2.png'
  ];
  final List<String>petname=[
    'Mack',
    'Bella',
    'Rocky'
  ];
  final List<String>breedname=[
    'Dog',
    'Cat',
    'Rabbit'
  ];
  final List<String>prize=[
    '₹100',
    '₹200',
    '₹300',
  ];
  final List<String>date=[
    '22-05-2022',
    '10-12-2022',
    '12-04-2022'
  ];
  
  final List<String>process=[
    'Pending',
    'Adopted',
    'Cancelled'
  ];
  final List<Color>textcolor=[
    Colors.orange,
    Colors.green,
     Colors.red
  ];
  final List<Color>colors=[
    Colors.yellow.withOpacity(0.1),
    Colors.green.withOpacity(0.1),
    Colors.red.withOpacity(0.1)
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: purpleColor,
        leading: const Icon(Icons.arrow_back,color: Colors.white,),
        title: const Text('My Adoptions',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
      ),
      body: ListView.builder(
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Card(
              elevation: 3,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                    
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),  color: Color.fromARGB(255, 196, 157, 170),),
                      child: ClipRRect(
                       
                        child: Image.asset(_images[index]),
                      ),
                    ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(petname[index],style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                      SizedBox(height: 10),
                      Text(breedname[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
                         SizedBox(height: 10),
                      Text(prize[index],style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),)
                    ],
                   ),
                 
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(date[index],style: TextStyle(fontWeight: FontWeight.w400),),
                         SizedBox(height: 10),
                      Text('Female',style: TextStyle(color: Colors.brown,fontWeight:FontWeight.bold ),),
                         SizedBox(height: 10),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(color: colors[index],borderRadius: BorderRadius.circular(5)),
                        child: Center(child: Text(process[index],style: TextStyle(color:textcolor[index],fontWeight: FontWeight.bold,fontSize: 12),),),
                       
                      )
                    ],
                   )
                  ],
                ),
              ),
            ),
          );
      
      },),
    );
  }
}
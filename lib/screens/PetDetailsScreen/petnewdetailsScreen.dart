

import 'package:flutter/material.dart';
import 'package:pet_adoption_project/Colors/colors.dart';

class PetNewDetailsScreen extends StatefulWidget {
  const PetNewDetailsScreen({super.key});


  @override
  State<PetNewDetailsScreen> createState() => _PetNewDetailsScreenState();
}

class _PetNewDetailsScreenState extends State<PetNewDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.download),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: 600,
                color: Colors.white,
              )
            ],
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 230,
                    child: Image.asset('assets/pet_dog.png'),
                  ),
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(17),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bruno',
                              style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w900),
                            ),
                            Icon(Icons.male)
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Germen Shipherd',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                            ),
                            Text('${'3'} Years',   style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on,color: purpleColor,),
                            Text("Bangalore, India",style: TextStyle(fontSize: 12),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 250,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: SizedBox.fromSize(
                                      size: Size.fromRadius(22),
                                      child: Image.asset(
                                        'assets/profile_pic.jpg',
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Anvesha",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Owner',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text('Jan 22, 2024',style: TextStyle(color: purpleColor),),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                            "The Beagle, a small to medium-sized hound breed originating from England, is renowned for its friendly disposition, distinctive appearance, and excellent sense of smell, Originally bred for hunting small game, particularly rabbits and hares, Beagles are characterized by their short.",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),
                            ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        color:purpleColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                       
                      ),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ),
                    ),
                  
                    Container(
                        height: 50,
                        width: 270,
                        decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                         
                        ),
                        child: Center(
                            child: Text(
                          "Adoption Now",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )))
                  ],
                ),
                 
              ],
            ),
          )
        ],
      ),
    );
  }
}

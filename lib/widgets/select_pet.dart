import 'package:flutter/material.dart';
import 'package:pet_adoption_project/Colors/colors.dart';
import 'package:pet_adoption_project/screens/ViewPetsScreen/new_pet.dart';


class SelectPet extends StatelessWidget {
  final String name;
  final String breed;
  final String age;
  final String distance;
  final String image;
  final IconData gender;
  final Color color;
  final double height;
  final double width;
  const SelectPet({
    super.key,
    required this.name,
    required this.breed,
    required this.age,
    required this.distance,
    required this.image,
    required this.gender,
    required this.color,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondPage(
                        age: age,
                        breed: breed,
                        color: color,
                        distance: distance,
                        gender: gender,
                        image: image,
                        name: name,
                      ))),
          child: SizedBox(
            height: 220,
            width: 800,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.withOpacity(0.5),
                              //     spreadRadius: 2,
                              //     blurRadius: 4,
                              //     offset: Offset(
                              //         0, 3), // changes position of shadow
                              //   ),
                              // ],
                            ),
                          ),
                          Container(
                            height: 150,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.withOpacity(0.5),
                              //     spreadRadius: 2,
                              //     blurRadius: 4,
                              //     offset: Offset(
                              //         0, 3), // changes position of shadow
                              //   ),
                              // ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        name,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20),
                                      ),
                                      Icon(gender)
                                    ],
                                  ),
                                
                                  Text(breed,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                                 
                                  Text('$age Years',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                  Row(
                                  
                                    children: [
                                      Icon(Icons.location_on,color:purpleColor,),
                                      Text("Distance $distance Km",style: TextStyle(color: Colors.brown),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 10,
                  height: 220,
                  width: 200,
                  child: Center(
                    child: ClipRRect(
                        child: Image.asset(
                      image,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
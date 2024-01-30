import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_adoption_project/ApiProvider/AllPetProvider/petmodel.dart';
import 'package:pet_adoption_project/Colors/colors.dart';
import 'package:pet_adoption_project/screens/PetDetailsScreen/petnewdetailsScreen.dart';
import 'package:provider/provider.dart';



class AllPetWidget extends StatefulWidget {
  const AllPetWidget({super.key});

  @override
  State<AllPetWidget> createState() => _AllPetWidgetState();
}

class _AllPetWidgetState extends State<AllPetWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
        final pet = Provider.of<PetModel>(context);
    return  Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>const PetNewDetailsScreen()));
                      },
                      child: Container(
                        height: 190,
                        width: 200,
                       
                        decoration: BoxDecoration( color: Color.fromARGB(255, 165, 232, 212),borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset(pet.petImage,scale: 2)
                          ],
                        ),
                      ),
                    ),
                  ),
                    Container(
                    height: 150,
                    width: 190,
                   
                     decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(pet.petName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18),),
                              Icon(Icons.male,)
                            ],
                          ),
                          Text(pet.petBreed,style: TextStyle(color: Colors.grey,),),
                           Text('${pet.petAge} Years',style: TextStyle(color: Colors.black),),
                           Row(
                            children: [
                              Icon(IconlyBold.location,color: purpleColor,),
                              Text(pet.petBreed)
                            ],
                           )
        
                        ],
                       ),
                     ),
                  )
                ],
              );
  }
}

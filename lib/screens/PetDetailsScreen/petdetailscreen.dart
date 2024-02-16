import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pet_adoption_project/ApiProvider/AllPetProvider/petprovider.dart';
import 'package:pet_adoption_project/Colors/colors.dart';
import 'package:provider/provider.dart';

class PetDetailsScreen extends StatefulWidget {
  static const routeName = 'pets_details_screen';
  final String id;
  const PetDetailsScreen({super.key,required this.id});

  @override
  State<PetDetailsScreen> createState() => _PetDetailsScreenState();
}

class _PetDetailsScreenState extends State<PetDetailsScreen> {
   bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
       final pets = Provider.of<PetProvider>(context,listen: false);
      final petData =
        Provider.of<PetProvider>(context).pets.firstWhere((element) => element.petId == widget.id);
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
                child: Image.network(petData.petImage),
                
              ),
              SizedBox(height: size.height*0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(petData.petBreed,style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                  Text('₹ 40.00',style: TextStyle(color: purpleColor,fontWeight: FontWeight.w900,fontSize: 18),),
                  
                ],
              ),
              Row(
                children: [
                  Icon(LineIcons.dog,color: purpleColor),
                  SizedBox(width: size.width*0.01),
                  Text('Season Cateory :${petData.petspeciesName}')
                ],
              ),
             SizedBox(height: size.height*0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height*0.09,
                width: size.width*0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age',style: TextStyle(color:purpleColor,fontWeight: FontWeight.w900),),
                      Text('${petData.petAge} Years',style: const TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                  ),
                   Container(
                height: size.height*0.09,
                width: size.width*0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.white
              ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Gender',style: TextStyle(color:purpleColor,fontWeight: FontWeight.w900),),
                      Text(petData.petSex,style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
              ),
               Container(
               height: size.height*0.09,
                width: size.width*0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.white
              ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight',style: TextStyle(color:purpleColor,fontWeight: FontWeight.w900),),
                      Text(petData.petWeight,style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
              ),
                ],
              ),
              SizedBox(height: size.height*0.02),
              const Text('Description',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
               SizedBox(height: size.height*0.01),
              const Text('The German Shepherd Dog, often known simply as the German Shepherd, is a highly intelligent and versatile breed. Originally developed in Germany for herding sheep, they have become one of the most popular and recognizable dog breeds worldwide. '),
              SizedBox(height: size.height*0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               Container(
     height: size.height*0.07,
                  width: size.width*0.16,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: purpleColor),
      ),
      child: IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_outline,
          color: isFavorite ? Colors.red : purpleColor,
        ),
      ),
    ),
                  Container(
                   height: size.height*0.07,
                   width: size.width*0.65,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(10)),
                    child:  Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.pets,color: Colors.white,),
                        SizedBox(width: size.width*0.02),
                        Text('Adopt Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
                      ],
                    )),
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
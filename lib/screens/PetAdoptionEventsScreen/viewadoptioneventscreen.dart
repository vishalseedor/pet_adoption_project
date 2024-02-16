import 'package:flutter/material.dart';
import 'package:pet_adoption_project/Colors/colors.dart';

class ViewAdoptionPage extends StatefulWidget {
  const ViewAdoptionPage({super.key});

  @override
  State<ViewAdoptionPage> createState() => _ViewAdoptionPageState();
}

class _ViewAdoptionPageState extends State<ViewAdoptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemCount: 10,
      
        itemBuilder: (context, index) {
        
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Card(
            color: Colors.grey[200],
            child: ListTile(
              leading: Container(
                height: 150,
                width: 55,
                decoration: BoxDecoration(color:Color.fromARGB(255, 42, 103, 69).withOpacity(0.6),borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Text('23',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('Mon',style: TextStyle(color: Colors.white),),
                    //Text('2024',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              title: Text('Pet Adoption Events',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              subtitle: Text('Location : Trivandrum',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),), 
              
            ),
          ),
        );
      },) ,
    );
  }
}
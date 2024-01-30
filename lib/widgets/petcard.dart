
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_adoption_project/screens/PetDetailsScreen/petdetailscreen.dart';


class PetCard extends StatelessWidget {
  const PetCard({super.key});

//  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (_) => const PetDetailsScreen()),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          side: BorderSide(color: Colors.grey.shade200),
        ),
        elevation: 0.1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(                                               
              height: 130,
              alignment: Alignment.topRight,
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/new.jpg'),
                  fit: BoxFit.cover,
                ),   
              ),
              child: SizedBox(
                
                width: 30,
                height: 30,
                child: IconButton.filledTonal(
                  padding: EdgeInsets.zero,
                  onPressed: () {}, 
                  iconSize: 18,
                  icon: const Icon(Icons.favorite,color: Colors.red,),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Text('Jack',style: TextStyle(fontWeight: FontWeight.bold),),
                       Text("\$${100.00}",style: TextStyle(fontWeight: FontWeight.w400),)
                     
                      ],
                    ),
                    
                  ),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(IconlyLight.location,color: Colors.red,),
                      
                      Text('North Street (2km)'),
                     
                      // SizedBox(
                      //   width: 30,
                      //   height: 30,
                      //   child: IconButton.filled(
                      //     padding: EdgeInsets.zero,
                      //     onPressed: () {},
                      //     iconSize: 18,
                      //     icon: const Center(child: Icon(Icons.add)),
                      //   ),
                      // )
                    ],
                  ),
                  Text('Female 2 Years')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

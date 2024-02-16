import 'package:flutter/material.dart';
import 'package:pet_adoption_project/screens/PetDetailsScreen/petdetailscreen.dart';
import '../../Colors/colors.dart';


class AllPetWidget extends StatefulWidget {
  final String petid;
  final String petImage;
  final String name;
  final String breed;
  final String age;
  final String gender;
  final String species;

  const AllPetWidget(
      {super.key,
      required this.petid,
      required this.petImage,
      required this.name,
      required this.breed,
      required this.age,
      required this.gender,
      required this.species,
      });

  @override
  State<AllPetWidget> createState() => _AllPetWidgetState();
}

class _AllPetWidgetState extends State<AllPetWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //  final pet = Provider.of<PetModel>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
      //            Navigator.of(context).pushNamed(
      // PetDetailsScreen.routeName,
      // arguments: widget.petid);
              Navigator.of(context).pushNamed(PetDetailsScreen.routeName,arguments:widget.petid);
              },
              child: Container(
                  height: 150,
            width: 190,
                decoration: BoxDecoration(
                     image: DecorationImage(image: NetworkImage(widget.petImage),fit: BoxFit.cover),
                   
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))),
               // child: Image.network(widget.petImage),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 190,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 18),
                      ),
                      Text(widget.gender)
                    ],
                  ),
                  Text(
                    widget.species,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '${widget.age} Years',
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.pets_outlined,
                        color: purpleColor,
                      ),
                      Text(widget.breed)
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.2,
          )
        ],
      ),
    );
  }
}

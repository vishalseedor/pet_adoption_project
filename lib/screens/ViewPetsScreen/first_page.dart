import 'package:flutter/material.dart';
import 'package:pet_adoption_project/Colors/colors.dart';
import 'package:pet_adoption_project/screens/ViewPetsScreen/new_pet.dart';
import 'package:pet_adoption_project/widgets/petwidget.dart';
import 'package:pet_adoption_project/widgets/select_pet.dart';


class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int _selectedIndex = -1;

  final List<Map<String, String>> petData = [
    {'name': 'Cats', 'image': 'assets/animal.png'},
    {'name': 'Dogs', 'image': 'assets/dog.png'},
    {'name': 'Bunnie', 'image': 'assets/rabbit.png'},
    {'name': 'Birds', 'image': 'assets/horse.png'},
     {'name': 'Cats', 'image': 'assets/animal.png'},
    {'name': 'Dogs', 'image': 'assets/dog.png'},
    {'name': 'Bunnie', 'image': 'assets/rabbit.png'},
    {'name': 'Birds', 'image': 'assets/horse.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
         backgroundColor: Colors.grey[100],
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Location',style: TextStyle(fontSize: 15),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color:purpleColor,
                ),
                Text(
                  'Delhi, ',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                ),
                Text('India',style: TextStyle(fontSize: 15),)
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: SizedBox.fromSize(
                  size: Size.fromRadius(25),
                  child: Image.asset(
                    'assets/profile_pic.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 2,
                  //     blurRadius: 4,
                  //     offset: Offset(0, 0), // changes position of shadow
                  //   ),
                  // ],
                ),
                child: const Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.search,
                          size: 30,
                        )),
                    Expanded(
                      flex: 3,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search pet to adopt',
                            border: InputBorder.none),
                      ),
                    ),
                    Expanded(flex: 1, child: Icon(Icons.tune))
                  ],
                ),
              ),
            ),
          
            const SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 1,
              child: ListView(
                shrinkWrap: false,
                scrollDirection:
                    Axis.horizontal, // Set the scroll direction to horizontal
                children: petData.map((pet) {
                  int index = petData.indexOf(pet);
                  return PetWidget(
                    borderColor:
                        _selectedIndex == index ? Colors.green : Colors.white,
                    ontap: () {
                      setState(() {
                        if (_selectedIndex == index) {
                          _selectedIndex = -1;
                        } else {
                          _selectedIndex = index;
                        }
                      });
                    },
                    isSelected: _selectedIndex == index,
                    name: pet['name']!,
                    image: pet['image']!,
                  );
                }).toList(),
              ),
            ),
            const SelectPet(
              age: '1',
              breed: 'Beagle',
              distance: '6.0',
              gender: Icons.male,
              image: 'assets/Beagle.png',
              name: 'Bruno',
              color: Color.fromARGB(255, 235, 198, 164),
              height: 200,
              width: 280,
            ),
            const SelectPet(
              age: '0',
              breed: 'Labrodor',
              distance: '10.2',
              gender: Icons.female,
              image: 'assets/pet_dog.png',
              name: 'Miko',
              color: Color.fromARGB(255, 213, 133, 198),
              height: 200,
              width: 250,
            )
          ],
        ),
      ),
    );
  }
}




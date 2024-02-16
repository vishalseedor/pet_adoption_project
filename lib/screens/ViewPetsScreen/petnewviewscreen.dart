import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';



import 'package:provider/provider.dart';

import '../../ApiProvider/AllPetProvider/loadingscreen.dart';
import '../../ApiProvider/AllPetProvider/petWidget.dart';
import '../../ApiProvider/AllPetProvider/petprovider.dart';
import '../../Colors/colors.dart';
import '../../ProfileScreen/profilescreen.dart';
import '../FavouriteScreen/favouritescreen.dart';
import '../LoginScreen/loginscreen.dart';
import '../PetAdoptionEventsScreen/petadoptionevnet.dart';

class PetNewViewScreen extends StatefulWidget {
  const PetNewViewScreen({super.key});

  @override
  State<PetNewViewScreen> createState() => _PetNewViewScreenState();
}

class _PetNewViewScreenState extends State<PetNewViewScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    Provider.of<PetProvider>(context, listen: false)
        .getAllPetsData(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pet = Provider.of<PetProvider>(context);

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
      
        backgroundColor: Colors.grey[300],
        title: Column(
          children: [
            const Text(
              'All pets ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  IconlyLight.location,
                  color: purpleColor,
                ),
                const Text(
                  'Trivandrum. India',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
              ],
            )
          ],
        ),
        actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(IconlyLight.notification,color: Colors.black,),
        )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: purpleColor),
                currentAccountPicture: const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                accountName: const Text(
                  'Vishal',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: const Text(
                  'vishal123@gmail.com',
                  style: TextStyle(fontWeight: FontWeight.w400),
                )),
            ListTile(
              leading: const Icon(IconlyLight.home),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PetNewViewScreen()));
              },
            ),
            const ListTile(
              leading: Icon(IconlyLight.shieldDone),
              title: Text('Adoption'),
            ),
            ListTile(
              leading: const Icon(IconlyLight.addUser),
              title: const Text('Pet Adoption Evnent'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PetAdoptionEvntScreen()));
              },
            ),
            ListTile(
              leading: const Icon(IconlyLight.heart),
              title: const Text('Favourites'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PetFavouritePage()));
              },
            ),
            const ListTile(
              leading: Icon(IconlyLight.bookmark),
              title: Text('Bookes Evnts'),
            ),
            const ListTile(
              leading: Icon(IconlyLight.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: const Icon(IconlyLight.profile),
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
            ),
            ListTile(
              leading: const Icon(IconlyLight.logout),
              title: const Text('Logout'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                        'Logout',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      content:
                          const Text('Are you sure want to exit this app?'),
                      actions: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: purpleColor),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: Text(
                            'OK',
                            style: TextStyle(
                              fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: purpleColor),
                          onPressed: () {
                            // Close the dialog
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'CANCEL',
                            style: TextStyle(
                               fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TextField(
                controller: searchController,
                onChanged: (value) {
                  
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: 'Search',
                    prefixIcon: const Icon(IconlyLight.search),
                    suffixIcon: const Icon(IconlyLight.filter),
                    fillColor: Colors.white.withOpacity(0.4),
                    filled: true),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/dog.png', scale: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: purpleColor),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                       border: Border.all(color: purpleColor),
                      color: Colors.white,
                    ),
                    child: Image.asset('assets/cat.png', scale: 13),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                       border: Border.all(color: purpleColor),
                      color: Colors.white,
                    ),
                    child: Image.asset('assets/horse.png', scale: 12),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                       border: Border.all(color: purpleColor,width: 2),
                      color: Colors.white,
                    ),
                    child: Image.asset('assets/rabbit.png', scale: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              pet.loadingSpinner
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const LoadingScreen(title: 'Loading'),
                        CircularProgressIndicator(
                          color: purpleColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                     
                      ],
                    )
                  : pet.pets.isEmpty
                      ? Center(
                          child: Text(
                          'No Pets...',
                          style: TextStyle(color: purpleColor),
                        ))
                      : SizedBox(
                          height: size.height * 0.6,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: pet.pets.length,
                            itemBuilder: (context, intex) {
                              return AllPetWidget(
                                petid: pet.pets[intex].petId,
                                name: pet.pets[intex].petName,
                                age: pet.pets[intex].petAge,
                                breed: pet.pets[intex].petBreed,
                                petImage: pet.pets[intex].petImage,
                                gender: pet.pets[intex].petSex,
                                species: pet.pets[intex].petspeciesName,
                              );
                            },
                          ),
                        ),          
           
            ],
          ),
        ),
      ),
    );
  }
}

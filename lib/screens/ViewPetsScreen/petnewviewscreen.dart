import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pet_adoption_project/ApiProvider/AllPetProvider/loadingscreen.dart';
import 'package:pet_adoption_project/ApiProvider/AllPetProvider/petWidget.dart';
import 'package:pet_adoption_project/ApiProvider/AllPetProvider/petprovider.dart';
import 'package:pet_adoption_project/Colors/colors.dart';
import 'package:pet_adoption_project/ProfileScreen/profilescreen.dart';
import 'package:pet_adoption_project/screens/FavouriteScreen/favouritescreen.dart';
import 'package:pet_adoption_project/screens/LoginScreen/loginscreen.dart';
import 'package:pet_adoption_project/screens/PetAdoptionEventsScreen/petadoptionevnet.dart';
import 'package:pet_adoption_project/screens/PetDetailsScreen/petnewdetailsScreen.dart';
import 'package:provider/provider.dart';

class PetNewViewScreen extends StatefulWidget {
  const PetNewViewScreen({super.key});

  @override
  State<PetNewViewScreen> createState() => _PetNewViewScreenState();
}

class _PetNewViewScreenState extends State<PetNewViewScreen> {
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
        centerTitle: true,
         backgroundColor: Colors.grey[300],
        title: Column(
          children: [
            const Text('All pets View',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 18),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(IconlyLight.location,color: purpleColor,),
                const Text('Location,Delhi.India',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
              ],
            )
          ],
        ),
        actions: [
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 65,
            backgroundImage: AssetImage('assets/profile.png'),
          )
        ],

      ),
      drawer: Drawer(
        
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: purpleColor),
              currentAccountPicture: const CircleAvatar(radius: 60,backgroundImage: AssetImage('assets/profile.png'),),
              accountName: const Text('Vishal',style: TextStyle(fontWeight: FontWeight.bold),), accountEmail:const Text('vishal123@gmail.com',style: TextStyle(fontWeight: FontWeight.w400),)),
              ListTile(
                leading: const Icon(IconlyLight.home),
                title: const Text('Dashboard'),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const PetNewViewScreen()));
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
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const PetAdoptionEvntScreen()));
                },
              ),
                ListTile(
                leading: const Icon(IconlyLight.heart),
                title: const Text('Favourites'),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const PetFavouritePage()));
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
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const ProfilePage()));
                },
              ),
                ListTile(
                leading: const Icon(IconlyLight.logout),
                title: const Text('Logout'),
                onTap: (){
                    showDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: const Text('Logout',style: TextStyle(fontWeight: FontWeight.bold),),
                  content: const Text('Are you sure want to exit this app?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>const LoginPage()));
                      },
                      child: Text('OK',style: TextStyle(color: purpleColor,fontWeight: FontWeight.bold),),

                    ),
                     TextButton(
                      onPressed: () {
                        // Close the dialog
                        Navigator.of(context).pop();
                      },
                      child: Text('CANCEL',style: TextStyle(color: purpleColor,fontWeight: FontWeight.bold),),)
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
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),hintText: 'Search',prefixIcon: const Icon(IconlyLight.search),suffixIcon: const Icon(IconlyLight.filter),
                  fillColor: Colors.white.withOpacity(0.4),filled: true
                  ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/dog.png',scale:10),
                   
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.white,),
                  ),
                    Container(
                    height: 70,
                    width: 70,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.white,), 
                      child: Image.asset('assets/cat.png',scale:13),
                   
                  ),
                    Container(
                    height: 70,
                    width: 70,
                  
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.white,),
                       child: Image.asset('assets/horse.png',scale:12),
                  ),
                    Container(
                    height: 70,
                    width: 70,  
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.white,),
                       child: Image.asset('assets/rabbit.png',scale:12),
                  ),
        
                ],
              ),
              const SizedBox(height: 30,),
                 pet.loadingSpinner
                ?  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const LoadingScreen(title: 'Loading'),
                      CircularProgressIndicator(
                        color: purpleColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      // Text(
                      //   'Loading...',
                      //   style: TextStyle(fontSize: 20),
                      // ),
                    ],
                  )
                : pet.pets.isEmpty
                    ?  Center(child: Text('No Pets...',style: TextStyle(color: purpleColor),))
                    : const AllPetWidget(),
              // Row(
              //   children: [
              //     Expanded(
              //       child: InkWell(
              //         onTap: () {
              //           Navigator.push(context,MaterialPageRoute(builder:(context)=>const PetNewDetailsScreen()));
              //         },
              //         child: Container(
              //           height: 190,
              //           width: 200,
                       
              //           decoration: BoxDecoration( color: Color.fromARGB(255, 165, 232, 212),borderRadius: BorderRadius.circular(20)),
              //           child: Column(
              //             children: [
              //               Image.asset('assets/pet_cat2.png',scale: 2)
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //       Container(
              //       height: 150,
              //       width: 190,
                   
              //        decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))),
              //        child: Padding(
              //          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              //          child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text('Bruno',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18),),
              //                 Icon(Icons.male,)
              //               ],
              //             ),
              //             Text('Pershian Cat',style: TextStyle(color: Colors.grey,),),
              //              Text('3 Years',style: TextStyle(color: Colors.black),),
              //              Row(
              //               children: [
              //                 Icon(IconlyBold.location,color: purpleColor,),
              //                 Text(' Distance : 6.0 km')
              //               ],
              //              )
        
              //           ],
              //          ),
              //        ),
              //     )
              //   ],
              // ),
              // const SizedBox(height: 30),
              //  Row(
              //   children: [
              //     Expanded(
              //       child: InkWell
              //       (
              //         onTap: () {
              //           Navigator.push(context,MaterialPageRoute(builder:(context)=>const PetNewDetailsScreen()));
              //         },
              //         child: Container(
              //           height: 190,
              //           width: 200,
                       
              //           decoration: BoxDecoration( color: Color.fromARGB(255, 238, 188, 188),borderRadius: BorderRadius.circular(20)),
              //           child: Column(
              //             children: [
              //               Image.asset('assets/pet_dog.png',scale: 2)
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //       Container(
              //       height: 150,
              //       width: 190,
                   
              //        decoration: const BoxDecoration( color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))),
              //        child: Padding(
              //          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              //          child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text('Tommy',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18),),
              //                 Icon(Icons.female)
              //               ],
              //             ),
              //             Text('Bommerian Dog',style: TextStyle(color: Colors.grey,),),
              //              Text('3 Years',style: TextStyle(color: Colors.black),),
              //              Row(
              //               children: [
              //                 Icon(IconlyBold.location,color: purpleColor,),
              //                 Text('Distance : 6.0 km')
              //               ],
              //              )
        
              //           ],
              //          ),
              //        ),
              //     )
              //   ],
              // ),
              //  const SizedBox(height: 30),
              //  Row(
              //   children: [
              //     Expanded(
              //       child: Container(
              //         height: 190,
              //         width: 200,
                     
              //         decoration: BoxDecoration( color: Color.fromARGB(255, 214, 206, 185),borderRadius: BorderRadius.circular(20)),
              //         child: Column(
              //           children: [
              //             Image.asset('assets/pet_rabbit.png',scale:2.5)
              //           ],
              //         ),
              //       ),
              //     ),
              //       Container(
              //       height: 150,
              //       width: 190,
                   
              //        decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))),
              //        child: Padding(
              //          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              //          child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text('Tommy',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18),),
              //                 Icon(Icons.male)
              //               ],
              //             ),
              //             Text('Bommerian Dog',style: TextStyle(color: Colors.grey,),),
              //              Text('3 Years',style: TextStyle(color: Colors.black),),
              //              Row(
              //               children: [
              //                 Icon(IconlyBold.location,color: purpleColor,),
              //                 Text(' Distance : 6.0 km')
              //               ],
              //              )
        
              //           ],
              //          ),
              //        ),
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
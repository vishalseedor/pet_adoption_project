import 'package:flutter/material.dart';
import 'package:pet_adoption_project/Colors/colors.dart';
import 'package:pet_adoption_project/screens/PetAdoptionEventsScreen/viewadoptioneventscreen.dart';

class PetAdoptionEvntScreen extends StatefulWidget {
  const PetAdoptionEvntScreen({super.key});

  @override
  State<PetAdoptionEvntScreen> createState() => _PetAdoptionEvntScreenState();
}

class _PetAdoptionEvntScreenState extends State<PetAdoptionEvntScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Pet Adoption Evnet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                indicatorColor: purpleColor,
                labelStyle: TextStyle(color: purpleColor),
                tabs: [
                Tab(text: "Book Adoption Evnets",),
                Tab(text: "View Adoption Evnets"),
                
              ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  ViewAdoptionPage(),
                  Container(
                    child: Center(child: Text("Articles Body")),
                  ),
                 
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
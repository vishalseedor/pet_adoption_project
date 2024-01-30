import 'package:flutter/material.dart';

class PetModel with ChangeNotifier{
  final String petId;
  final String petName;
  final String petBreed;
  final String petImage;
  final String petspeciesName;
  final String petSex;
  final String petAge;


  PetModel({
   required this.petId,
   required this.petName,
   required this.petBreed,
   required this.petImage,
   required this.petspeciesName,
   required this.petAge,
   required this.petSex
  });
}

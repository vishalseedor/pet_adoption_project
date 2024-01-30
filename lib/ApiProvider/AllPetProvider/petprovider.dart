import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pet_adoption_project/ApiProvider/AllPetProvider/petmodel.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as https;

class PetProvider with ChangeNotifier {
  final List<PetModel> _pet = [];
  bool _isLoading = false;
  bool get islOading {
    return _isLoading;
  }

  final bool _loadingSpinner = false;
  bool get loadingSpinner {
    return _loadingSpinner;
  }

  bool _isSelect = false;

  bool get isSelect {
    return _isSelect;
  }

  final bool _isError = false;

  bool get isError {
    return _isError;
  }

  List<PetModel> _pets = [];
  List<PetModel> get pets {
    return [..._pets];
  }

  Future getAllPetsData({required BuildContext context}) async {
    try {
      _isLoading = true;
      // var headers = {'Cookie': 'ci_session=c7lis868nec6nl8r1lb5el72q8n26upv'};
      var response = await https.get(
          Uri.parse(
              "http://campus.sicsglobal.co.in/Project/pet_shop/api/viewallpets.php"),
          );

      print(
          "http://campus.sicsglobal.co.in/Project/pet_shop/api/viewallpets.php");

      print(response.body);

      if (response.statusCode == 200) {
        _isLoading = false;
        _pets = [];
        var extractedData = json.decode(response.body);
        //  print(json.decode(response.body) + 'printed extrated data');

          _pets.add(
            PetModel(
              petId: extractedData['petid'].toString(),
              petName: extractedData['name'].toString(),
              petBreed: extractedData['breed'].toString(),
              petspeciesName: extractedData['species'].toString(),
              petImage: extractedData['photo'].toString(),
              petAge: extractedData['age'].toString(),
              petSex: extractedData['sex'].toString(),
            ),
          );
        

        _isLoading = false;
        print('cateogory products loading completed --->' + 'loading data');
        notifyListeners();
      } else {
        _isLoading = true;
        notifyListeners();
      }
    } on HttpException catch (e) {
      // ignore: prefer_interpolation_to_compose_strings
      print('error in product prod -->>' + e.toString());
      print('Pet Data is one by one loaded the pet' +
          e.toString());
      _isLoading = false;

      _isSelect = false;
      notifyListeners();
    }
  }
}

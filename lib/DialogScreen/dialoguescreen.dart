import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:pet_adoption_project/screens/LoginScreen/loginscreen.dart';


class MyCustomAlertDialog {
  showCustomAlertdialog({
    required BuildContext context,
    required String title,
    required String subtitle,
    bool button = false,
    required Function() onTapOkButt,
    Function()? onTapCancelButt,
  }) async {
    return showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(subtitle),
        actions: <Widget>[
          if (button == true)
            CupertinoDialogAction(
              child: const Text('Cancel'),
              onPressed: () => onTapCancelButt!(),
            ),
          CupertinoDialogAction(
              child: const Text('Ok'),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>const LoginPage()))),
        ],
      ),
    );
  }
}
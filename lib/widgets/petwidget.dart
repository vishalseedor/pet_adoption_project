import 'package:flutter/material.dart';

class PetWidget extends StatefulWidget {
  final String name;
  final String image;
  final bool isSelected;
  final Color borderColor;
  final Function() ontap;

  const PetWidget(
      {super.key,
      required this.name,
      required this.image,
      this.isSelected = false,
      required this.borderColor,
      required this.ontap});

  @override
  State<PetWidget> createState() => _PetWidgetState();
}

class _PetWidgetState extends State<PetWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: Column(
        children: [
          GestureDetector(
            onTap: widget.ontap,
            child: Container(
              height: 70,
              width: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: widget.borderColor, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  // BoxShadow(
                  //   color: Colors.grey.withOpacity(0.5),
                  //   spreadRadius: 2,
                  //   blurRadius: 4,
                  //   offset: Offset(0, 3), // changes position of shadow
                  // ),
                ],
              ),
              child: Image.asset(
                widget.image,
                scale: 12,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.name)
        ],
      ),
    );
  }
}

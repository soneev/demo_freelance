import 'package:flutter/material.dart';

class CircleButtom extends StatelessWidget {
  const CircleButtom({
    Key? key,
    required this.iconName,
    this.isSelected = false,
  }) : super(key: key);

  final IconData iconName;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: CircleBorder(), //<-- SEE HERE
        padding: EdgeInsets.all(5),
      ),
      child: Icon(
        iconName,
        color: isSelected ? Colors.pink.shade100 : Colors.grey.shade400,
        size: 25,
      ),
    );
  }
}

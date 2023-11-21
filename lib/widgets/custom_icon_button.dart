import 'package:ecommerce_ui/styles.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final IconData iconName;
  const CustomIconButton({Key? key, required this.iconName}) : super(key: key);

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffeff4f8),
          boxShadow: softUiShadow,
          gradient: isActive ? activeGradient : null,
        ),
        child: Center(
          child: Icon(
            widget.iconName,
            size: 30,
            color: isActive ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

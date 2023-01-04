import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomIconButton extends StatelessWidget {
  final Icon icon;

  const CustomIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          constraints: const BoxConstraints.tightFor(width: 40),
          color: Colors.black54,
          icon: icon,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../utilities/Colors/colors.dart';

class DrawerControllerScreen extends StatefulWidget {
  const DrawerControllerScreen({super.key});

  @override
  State<DrawerControllerScreen> createState() => _DrawerControllerScreenState();
}

class _DrawerControllerScreenState extends State<DrawerControllerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(0.0),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppTextFiled extends StatelessWidget {
  const AppTextFiled({Key? key, this.name, this.keyboard, this.controller, this.iconData}) : super(key: key);
final String? name;
final TextInputType? keyboard;
final TextEditingController? controller;
final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboard,
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          suffixIcon: Icon(iconData??Icons.adb,color: Colors.black,),
          labelText: name??"",
          labelStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600
          )
      ),
    );
  }
}
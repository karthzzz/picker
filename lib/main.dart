import 'package:flutter/material.dart';
import 'package:picker/widget/picker_main_screen.dart';
 
 

final kShemeColor =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 76, 175, 158));

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: kShemeColor
        
      ),
      debugShowCheckedModeBanner: false,
      home: const PickerMainScreen(),
    ),
  );
}

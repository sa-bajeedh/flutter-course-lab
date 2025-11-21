import 'package:flutter/material.dart';

class AcouuntInformationScreen extends StatefulWidget {
  const AcouuntInformationScreen({super.key});

  @override
  State<AcouuntInformationScreen> createState() => _AcouuntInformationScreenState();
}

class _AcouuntInformationScreenState extends State<AcouuntInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(Icons.account_box,color: Colors.black,size: 100,),
    );
  }
}
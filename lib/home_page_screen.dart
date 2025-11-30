import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            SizedBox(
              height: 100,
              width: 300,
              child: TextField(
                controller: _controller1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  prefix: Icon(Icons.person, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 100,
              width: 300,
              child: TextField(
                controller: _controller2,
                decoration: InputDecoration(
                  prefix: Icon(Icons.lock, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 65,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () {
                  _controller2.text = _controller1.text;
                },
                label: Text(
                  "طباعة",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                icon: Icon(Icons.print, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

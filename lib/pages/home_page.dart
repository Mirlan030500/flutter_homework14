import 'package:flutter/material.dart';
import 'package:flutter_project1/pages/man_page.dart';
import 'package:flutter_project1/pages/woman_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I am',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Buttons(
              text: 'Man',
              navigator: () {
                return ManPage();
              },
            ),
            SizedBox(height: 20),
            Buttons(
              text: 'Woman',
              navigator: () {
                return WomanPage();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  final Widget Function() navigator;
  final String text;
  const Buttons({
    super.key,
    required this.text,
    required this.navigator,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        fixedSize: Size(300, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigator(),
          ),
        );
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}

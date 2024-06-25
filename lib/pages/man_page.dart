import 'package:flutter/material.dart';
import 'package:flutter_project1/pages/man_profile.dart';

class ManPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: TextButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          label: Text(
            'Back',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
        ),
        title: Text('MAN'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Fields(
              text: 'Your name',
              controller: nameController,
            ),
            SizedBox(height: 20),
            Fields(
              text: 'Age',
              controller: ageController,
            ),
            SizedBox(height: 20),
            Fields(
              text: 'Image Url',
              controller: imageController,
            ),
            SizedBox(height: 200),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: Size(300, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ManProfile(
                      pathToImage:
                          'https://media.2x2tv.ru/content/images/2024/05/---------------.jpg',
                    ),
                  ),
                );
              },
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Fields extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const Fields({
    super.key,
    //required this.nameController,
    required this.text,
    required this.controller,
  });

  //final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 300,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

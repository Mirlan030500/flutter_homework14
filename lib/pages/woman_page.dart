import 'package:flutter/material.dart';

class WomanPage extends StatelessWidget {
  const WomanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController imageController = TextEditingController();
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
        title: Text('WOMAN'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Fields2(
              controller: nameController,
              text: 'Your name',
            ),
            SizedBox(height: 30),
            Fields2(
              controller: ageController,
              text: 'Age',
            ),
            SizedBox(height: 30),
            Fields2(
              controller: imageController,
              text: 'Image Url',
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
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>),);
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

class Fields2 extends StatelessWidget {
  final String text;

  const Fields2({
    super.key,
    required this.controller,
    required this.text,
  });

  final TextEditingController controller;

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

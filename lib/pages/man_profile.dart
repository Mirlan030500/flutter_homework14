import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project1/pages/man_page.dart';

class ManProfile extends StatelessWidget {
  final String pathToImage;

  const ManProfile({
    super.key,
    required this.pathToImage,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            child: Image.network(pathToImage),
          ),
          Row(
            children: [
              TextFormField(
                controller: nameController,
              ),
              TextFormField(
                controller: ageController,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Location:',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(width: 10),
              Icon(Icons.flag),
              Text(
                'France, Lion',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

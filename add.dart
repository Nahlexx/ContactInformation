import 'package:flutter/material.dart';


class PersonalData extends StatefulWidget {
  @override
  _PersonalDataPageState createState() => _PersonalDataPageState();
}

class _PersonalDataPageState extends State<PersonalData> {
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _namelController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/pfp.jpg'),
              ),
            ),
            const SizedBox(height: 20),

            buildTextField("ENTER YOUR FIRST NAME", _fnameController),
            buildTextField("ENTER YOUR LAST NAME", _namelController),
            buildTextField("+63 9__ ___ ____", _phoneController),


            const SizedBox(height: 20),

            Text("Gender", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
         
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(labelText: label, border: OutlineInputBorder()),
      ),
    );
  }

  void savedata() {
    String fname = _fnameController.text;
    String namel = _namelController.text;
    String phone = _phoneController.text;

    print("FIRST NAME: $fname");
    print("LAST NAME: $namel");
    print("PHONE NUMBER: $phone");

  }
}

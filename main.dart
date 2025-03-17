import 'package:exam_contactinfo/add.dart';
import 'package:exam_contactinfo/profileasdd.dart';
import 'package:flutter/material.dart';
//import C:/FlutterDev/Projects/exam_contactinfo/lib/add

//C:/FlutterDev/Projects/exam_contactinfo/profileasdd.dart;


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 40, 46),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContactHeader(),
            ContactList(context),
            Adds(context, PersonalData()),
          ],
        ),
      ),
    );
  }
}

Widget ContactHeader() {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Contacts",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'San Francisco',
                color: Color.fromARGB(255, 167, 173, 184),
              ),
            ),
      
          ],
        ),
      ],
    ),
  );
}

Widget ContactList(BuildContext context) {
  return Column(
    children: [
      
      ContactItem( "Chrissandra Bautista", "+63 976 456 2314",context, CHRISS()),
      ContactItem( "Josh Nimo", "+63 976 456 2314",context,null),
      ContactItem( "Shelou Asaris", "+63 976 456 2314",context, null),
      ContactItem( "Ace Advincula", "+63 976 456 2314",context,null),
      ContactItem( "Crislyn Delgado", "+63 976 456 2314",context, null),
      ContactItem( "Airene Tungol", "+63 976 456 2314",context,null),
      ContactItem( "James Legado", "+63 976 456 2314",context, null),
      ContactItem( "Kharl Almonguerra", "+63 976 456 2314",context,null),
      ContactItem( "Vince Carabuena", "+63 976 456 2314",context, null),
      ContactItem( "Errol De Pedro", "+63 976 456 2314",context,null),
      
    
    ],
  );
}


Widget ContactItem(String title, String phone, BuildContext context, Widget? page) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 167, 173, 184),
        borderRadius: BorderRadius.circular(8),
      ),

      child: ListTile(
        leading: const Icon(
          Icons.person_3_rounded,
          color: Color.fromARGB(255, 0, 114, 34),
        ),

    
         title: Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            ),
         ),

         trailing: Text(
          phone,
          style: const TextStyle(
            fontSize: 16,
            ),
        ),
        
        onTap: () {
          if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          }
        },
  
      ),
    ),
  );
}


Widget Adds(BuildContext context, Widget? page) {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 167, 173, 184),
        borderRadius: BorderRadius.circular(8),
      ),
    child: Row(
     
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
          const Icon(
          Icons.plus_one,
          color: Color.fromARGB(255, 0, 114, 34),
          
        ),
        
          ],
          
        ),
        
      ],
      
    ),
    
    ),
    
  );
}


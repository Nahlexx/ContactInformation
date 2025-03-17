import 'package:flutter/material.dart';

class CHRISS extends StatefulWidget {
  @override
  _ChrisState createState() => _ChrisState();
}


class _ChrisState extends State<CHRISS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        
        padding: EdgeInsets.all(20),
        child: Row(
        children: [

        SizedBox(width: 500,),
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/fr.png')
        ),
    
        Column(
          children:  const [
            Text("Chrissandra Bautista", 
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'San Francisco',
                  color: Color.fromARGB(255, 43, 51, 66),
                ) 
                
            ),
            
          ],
          
   
        ),
        Number(),
         his(),
         MenuList(context),

      ],
      
    ),
      

      ),
      
    );

  }

  
}
Widget Number() {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Row(
      children: [
          
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "+63 976 456 2314",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'San Francisco',
                color: Color.fromARGB(255, 39, 43, 51),
              ),
            ),
            
          ],
          
        ),
        Iccons(Icons.phone),
        Icccons(Icons.message),
      ],
    ),
  );
}
@override
  Widget his() {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Row(
      children: [
          
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Call History",
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'San Francisco',
                color: Color.fromARGB(255, 184, 186, 190),
              ),
            ),
            
          ],
          
        ),
      ],
    ),
  );
}



Widget MenuList(BuildContext context) {
  return Column(
    children: [
      MenuItem("Apr27, 14:16", "+63234523423", "Didnt Connect"),
      MenuItems("Apr17, 14:16", "+63234523423",  "Rang 5 time"),
      MenuItem("Apr15, 12:16", "+63234523423", "Outgoing 15mins"),
    ],
  );
}

Widget MenuItem(String title, String phone, String reason) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
    child: Container(
      
      child: ListTile(

        title: Text(
          title,
          style: const TextStyle(fontSize: 18.0),
        ),
        
        trailing: Text(
          reason,
          style: const TextStyle(fontSize: 15.0),
        )
      ),
    ),
  );
}

Widget MenuItems(String title, String phone, String reason) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
    child: Container(
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18.0),
        ),
        

        trailing: Text(
          reason,
          style: const TextStyle(fontSize: 15.0),
        ),
        
      ),
    ),
  );
}

Widget Iccons(IconData icon){
  return Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
      child: Container(
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: const Color.fromARGB(255, 65, 136, 81)),
                const SizedBox(width: 10),
          
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget Icccons(IconData icon){
  return Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
      child: Container(
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: const Color.fromARGB(255, 255, 209, 3)),
                const SizedBox(width: 10),
                
              ],
            ),
          ),
        ),
      ),
    ),
  );
}





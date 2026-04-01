import 'package:flutter/material.dart';
import 'artist_home.dart';

class ArtistEntry extends StatelessWidget {
  final nameController = TextEditingController();
  final artController = TextEditingController();
  final placeController = TextEditingController();

  ArtistEntry({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Stack(
    children: [

      
      Positioned.fill(
        child: Image.asset(
          "assets/images/bg3.jpg", 
          fit: BoxFit.cover,
        ),
      ),

      
      Positioned.fill(
        child: Container(
          color: Colors.white.withOpacity(0.5), // 
        ),
      ),

      // 🧾 CONTENT
      Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              Text(
                "Welcome Artist 🎨",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              TextField(decoration: InputDecoration(labelText: "Your Name")),
              TextField(decoration: InputDecoration(labelText: "Art Form")),
              TextField(decoration: InputDecoration(labelText: "Your Place")),

              SizedBox(height: 20),

              ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ArtistHome(),
      ),
    );
  },
  child: Text("Continue"),
),
TextButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ArtistHome(),
      ),
    );
  },
  child: Text("Login Later"),
),
            ],
          ),
        ),
      ),
    ],
  ),
);
  }
}
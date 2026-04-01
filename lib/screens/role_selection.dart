import 'package:flutter/material.dart';
import 'artist_entry.dart';
import 'customer_home.dart';


class RoleSelection extends StatelessWidget {
  const RoleSelection({super.key});


  Widget roleCard(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      if (title == "Artist") {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => ArtistEntry()));
      } else {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => CustomerHome()));
      }
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // 👈 dynamic size
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.85),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 6)
        ],
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20, // 👈 bigger text
          fontWeight: FontWeight.bold, // 👈 bold
        ),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

         
          SizedBox.expand(
            child: Image.asset(
              "assets/images/bg4.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // 🎭 Artist (aur left)
          Positioned(
            top: 180,
            left: 15, 
            child: roleCard(context, "Artist"),
          ),

          // 🛍️ Customer (aur right)
          Positioned(
            bottom: 200,
            right: 1, // 
            child: roleCard(context, "Customer"),
          ),
        ],
      ),
    );
  }
}
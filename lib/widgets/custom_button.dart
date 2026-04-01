import 'package:flutter/material.dart';

class CustomerHome extends StatelessWidget {
  const CustomerHome({super.key});


  Widget customCard(String title, IconData icon) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.85),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6)
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Color(0xFF8B1E3F), size: 26),
          SizedBox(width: 15),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 16)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore Kalasetu"),
        backgroundColor: Color(0xFF8B1E3F),
      ),
      body: Stack(
        children: [

          // 🌼 Background
          Image.asset(
            "assets/images/bg5.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          // 📜 Content
          ListView(
            padding: EdgeInsets.all(16),
            children: [

              customCard("Browse & Buy Art", Icons.shopping_bag),

              customCard("Send Request to Artist", Icons.send),

              customCard("Story Behind the Art", Icons.menu_book),

              customCard("Explore Indian Crafts & Textiles", Icons.public),

              customCard("Connect & Learn", Icons.people),

            ],
          )
        ],
      ),
    );
  }
}
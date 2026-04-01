import 'package:flutter/material.dart';

class ArtistHome extends StatelessWidget {
  const ArtistHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Artist Dashboard"),
  backgroundColor: Color(0xFF8B1E3F),
),
body: Stack(
  children: [
    // 🌼 Background image
    Opacity(
      opacity: 0.7,
      child: Image.asset(
        "assets/images/bg2.jpg",
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    ),

    // 🧾 Content
    ListView(
      padding: EdgeInsets.all(16),
      children: [
        _buildCard("List Your Product Online", Icons.store),
        _buildCard("Sell Anywhere", Icons.public),
        _buildCard("Know Market Trends", Icons.bar_chart),
        _buildCard("Upload Your Art Story", Icons.video_call),
    ],
  ),
],
    ),
  );
}

  Widget _buildCard(String title, IconData icon) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF8B1E3F)),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {},
      ),
    );
  }
}
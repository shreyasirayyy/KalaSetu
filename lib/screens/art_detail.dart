import 'package:flutter/material.dart';

class ArtDetail extends StatelessWidget {
  final Map item;

  const ArtDetail({super.key, required this.item});

  Widget button(String text, Color color) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(vertical: 12),
        ),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item["title"]),
        backgroundColor: Color(0xFF8B1E3F),
      ),
      body: Column(
        children: [

          // 🖼️ Image
          Image.asset(
            item["image"],
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          SizedBox(height: 10),

          // 📄 Info
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item["title"],
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                Text(item["price"],
                    style: TextStyle(color: Colors.grey[700])),

                SizedBox(height: 15),

                Text(
                  "This artwork represents Indian heritage, culture, and traditional craftsmanship.",
                ),
              ],
            ),
          ),

          Spacer(),

          // 🔥 Buttons
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                button("Buy", Colors.green),
                SizedBox(width: 10),
                button("Request", Colors.orange),
                SizedBox(width: 10),
                button("Know More", Color(0xFF8B1E3F)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'art_detail.dart';

class BrowseArt extends StatelessWidget {

  final List<Map<String, dynamic>> items = [
    {
      "image": "assets/images/bc1.jpg",
      "title": "Madhubani Painting",
      "price": "₹1200"
    },
    {
      "image": "assets/images/bc2.jpg",
      "title": "Silver Jhumka",
      "price": "₹800"
    },
    {
      "image": "assets/images/bc3.jpg",
      "title": "Warli Art",
      "price": "₹1500"
    },
    {
      "image": "assets/images/bc4.jpg",
      "title": "Handloom Saree",
      "price": "₹2500"
    },
  ];

  BrowseArt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore Art"),
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

          // 🖼️ Grid
          GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final item = items[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ArtDetail(item: item),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(item["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["title"],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item["price"],
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
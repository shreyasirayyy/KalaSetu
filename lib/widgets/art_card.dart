import 'package:flutter/material.dart';
import '../models/art_model.dart';

class ArtCard extends StatelessWidget {
  final ArtModel item;

  const ArtCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 8)
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Stack(
          children: [

            // 🖼️ Image
            Positioned.fill(
              child: Image.asset(
                item.image,
                fit: BoxFit.cover,
              ),
            ),

            // 🌑 Gradient overlay (premium look)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),

            // ❤️ Like icon
            Positioned(
              top: 10,
              right: 10,
              child: Icon(Icons.favorite_border, color: Colors.white),
            ),

            // 📝 Text
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item.price,
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
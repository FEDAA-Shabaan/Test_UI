import 'package:flutter/material.dart';

Widget buildBestSellerSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Best Seller",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: Text("See more", style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
      ),
      SizedBox(height: 8),
    ],
  );
}

Widget buildBestSellerCard(
  BuildContext context,
  String imagePath,
  String title,
  String author,
  double rating,
  String listeners,
) {
  return Container(
    width: 300, // Adjust width based on your design
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 5,
          spreadRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(8)),
          child: Image.asset(
            imagePath,
            width: 100,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 16),
        // Book Details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                author,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  ...List.generate(
                    5,
                    (index) => Icon(
                      index < rating.floor() ? Icons.star : Icons.star_border,
                      color: Colors.orange,
                      size: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                listeners,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
        SizedBox(width: 16),
      ],
    ),
  );
}

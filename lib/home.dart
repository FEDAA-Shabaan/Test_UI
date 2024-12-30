import 'package:flutter/material.dart';
import 'package:ui_test/best_seller_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset("assets/images/Logo.png"),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const ImageIcon(AssetImage("assets/images/Setting.png")),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Categories Section
              _buildSectionTitle("Categories"),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCategoryChip("Art"),
                    const SizedBox(width: 16),
                    _buildCategoryChip("Business"),
                    const SizedBox(width: 16),
                    _buildCategoryChip("Comedy"),
                    const SizedBox(width: 16),
                    _buildCategoryChip("Drama"),
                    const SizedBox(width: 16),
                    _buildCategoryChip("Action"),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              _buildSectionTitle("Recommended For You"),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/photo1.png"),
                    const SizedBox(width: 16),
                    Image.asset("assets/images/Image Placeholder 2.png"),
                    const SizedBox(width: 16),
                    Image.asset("assets/images/Image Placeholder 2.png"),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Best Seller Section
              _buildSectionTitle("Best Seller"),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    buildBestSellerCard(
                      context,
                      "assets/images/Image Placeholder 240x240.png",
                      "Light Mage",
                      "Laurie Forest",
                      4.5,
                      "1,000+ Listeners",
                    ),
                    const SizedBox(width: 16),
                    buildBestSellerCard(
                      context,
                      "assets/images/Image Placeholder 240x240.png",
                      "Book Title Here",
                      "Author Name",
                      4.0,
                      "1,000+ Listeners",
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home,color:Colors.purple),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.search,color:Colors.black),
            label: "Search",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.library_books,color:Colors.black ,),
            label: "Library",
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("See more",
              style: TextStyle(color: Color(0xFFF4838D1))),
        ),
      ],
    );
  }

  Widget _buildCategoryChip(String label) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(color: Color(0xFFF2E2E5D)),
      ),
      backgroundColor: const Color(0xFFFF5F5F5),
    );
  }
}

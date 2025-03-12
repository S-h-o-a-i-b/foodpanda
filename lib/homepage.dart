import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50], // Light pink background
      appBar: AppBar(
        title: Text("UI Design"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Food Panda Full-Width Background
          Container(
            width: double.infinity,
            color: Colors.pink,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                "Food Panda",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Image.asset("assets/images/img1.png", height: 200, width: 200),
                SizedBox(height: 10),
                Text(
                  "Are you hungry? Order Now . . .",
                  style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "SET MENU",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMenuItem(Icons.local_pizza, "Pizza"),
                _buildMenuItem(Icons.fastfood, "Burger"),
                _buildMenuItem(Icons.local_drink, "Juice"),
                _buildMenuItem(Icons.rice_bowl, "Fried Rice"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return Container(
      width: 85,
      height: 85,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 35, color: Colors.white),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

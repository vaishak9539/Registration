// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
      ),
      body: 
          ResponsiveGridList(
        desiredItemWidth: 160,
        minSpacing: 10,
        children: List.generate(6){
          return Container(
            height: 190,
            alignment: Alignment(0, 0),
            color: Colors.cyan,
            // child: Text(i.toString()),
          );
        }
    )

    );
  }
}

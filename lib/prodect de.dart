import 'package:flutter/material.dart';

class ProdectDe extends StatefulWidget {
  const ProdectDe({super.key});

  @override
  State<ProdectDe> createState() => _ProdectDeState();
}

class _ProdectDeState extends State<ProdectDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              child: Image.asset("assets/images/men 1.webp",),
            ),
            
          ],
        ),
      ),
    );
  }
}
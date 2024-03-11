// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My account"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Edit Profile",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 56),
            child:SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "First Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child:SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Last Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child:SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child:SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email ID",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  )
                ),
              ),
            )
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[900],
              ),
              child: Center(
                child: Text("Submit",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),
              ),
            ),
          )

        ],
      ),

    );
  }
}
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_registration/edit_profile.dart';
import 'package:login_registration/my_orders.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  List accountOptions=["My orders","Edit profile","Coupons","Contact us","Invite friends"];
  List a=[MyOrders(),Edit_profile()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My account"),
      ),
      body: ListView.separated(
          itemBuilder: (ctx,index){
            return 
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx){
                  return a[index];
                }));
              },
              title: Text(accountOptions[index]),
            );
          },
          separatorBuilder: (ctx,index)=>Divider(),
          itemCount: accountOptions.length),

    );
  }
}

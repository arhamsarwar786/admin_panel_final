
import 'package:flutter/material.dart';


import 'admin_panel/add_product_screen.dart';
import 'home_widget.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List color1 = [
    Colors.black,
    Colors.blueAccent,
    Colors.orange,
    Colors.pink,
    // Colors.green,
    // Colors.green,
  ];
  List txt = [
    "Lipstick",
    "Lipstick",
    "Lipstick",
    "Lipstick",
    "HairStyle",
  ];
  List image1 = [
    "assets/images/lipstick.jpeg",
    "assets/images/lipstick1.jpeg",
    "assets/images/bag.jpeg",
    "assets/images/handbag.jpeg",
    "assets/images/bag.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          
            Navigator.push(context, MaterialPageRoute(builder: (_) => AddProductScreen()) );
        },
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        centerTitle: true,
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // customRow(context,"Catergories"),

             
              // Second listview
              // customListView(
              //   context: context,
              //   color1: color1,
              //   txt: txt,
              // ),

            
              customListView(context: context, color1: color1, txt: txt),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'games.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String title;
  void main() {
    Text(title, style: const TextStyle(fontWeight: FontWeight.w500));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Hello! \nChukwuemeka',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Ionicons.notifications),
                ],
              ),
              const SizedBox(height: 30),

              //container displaying premium banner
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    alignment: Alignment.bottomRight,
                    image: NetworkImage(
                      'https://cdn.vectorstock.com/i/preview-1x/41/90/3d-cartoon-hand-holding-phone-vector-45034190.jpg',
                    ),
                    fit: BoxFit.contain,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: Colors.blueAccent,
                ),
                height: 90,
                width: 400,
                child: const Text(
                  'Go Premium \nUpgrade to premium, \nget more profits now!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //
              Row(
                children: const [
                  Text(
                    'Feature',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              //1st row
              Row(
                children: [
                  Column(
                    children: [
                      //top up
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple[100],
                        ),
                        height: 60,
                        width: 60,
                        child: const Icon(
                          Ionicons.reload,
                          color: Colors.purple,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Top Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      //transfer
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],
                        ),
                        child: const Icon(
                          Ionicons.paper_plane,
                          color: Colors.deepOrange,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Transfer',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      //internet
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green[100],
                        ),
                        child: const Icon(
                          Ionicons.globe,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Internet',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      //wallet
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red[100],
                        ),
                        child: const Icon(
                          Ionicons.wallet,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Wallet',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              //2nd row
              Row(
                children: [
                  Column(
                    children: [
                      //bills
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[100],
                        ),
                        child: const Icon(
                          Ionicons.receipt,
                          color: Colors.deepOrange,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Bills',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      //Game
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green[100],
                        ),
                        child: const Icon(
                          Ionicons.game_controller,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Game',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      //mobile prepaid
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red[100],
                        ),
                        child: const Icon(
                          Ionicons.phone_portrait_outline,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Mobile \nPrepaid',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      //more
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple[100],
                        ),
                        child: const Icon(
                          Ionicons.apps,
                          color: Colors.purple,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'More',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Text(
                    'Special Promo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  //view all textbutton
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Games(),
                        ),
                      );
                    },
                    child: const Text(
                      'View games',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
//
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    height: 60,
                    width: 150,
                    child: const Center(
                      child: Text(
                        "Not available",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    height: 60,
                    width: 150,
                    child: const Center(
                      child: Text(
                        "Not available",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

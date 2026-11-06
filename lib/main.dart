import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Liburan Keluarga'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network('https://magelangekspres.disway.id/wisata/read/658176/taman-bunga-celosia-wisata-hits-semarang-yang-bikin-kamu-nggak-mau-pulang',
                      width: 130,
                      height: 145,
                      fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 15,),
                    const Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Taman Bunga Celosia'),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 19,
                      ),
                      SizedBox(width: 5),
                      Text('4.6 Cocok untuk Keluarga',
                      ),
                    ],
                  )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 22, 16, 19),
                child: Text(
                  'Tentang Taman',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

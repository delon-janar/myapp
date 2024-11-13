import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me!'),
        backgroundColor: Colors.limeAccent,
      ),
      body: Stack(
        children: [
          // Gambar latar belakang
          Positioned.fill(
            child: Opacity(
              opacity: 0.2, // Mengatur transparansi latar belakang
              child: Image.asset(
                'assets/bali.JPG', // Ganti dengan path gambar
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Konten halaman
          Column(
            children: [
              SizedBox(height: 20),
              // Container untuk border
              Container(
                padding: EdgeInsets.all(4), // Ketebalan border
                decoration: BoxDecoration(
                  color: Colors.limeAccent, // Warna border
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/fotodelon.jpg'), // Path foto
                ),
              ),
              SizedBox(height: 10),
              Text(
                'I Komang Delon Janarwiguna',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                '5026221136',
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 1, // Ketebalan Divider
                color: Colors.black54, // Warna Divider
              ),
              // Border untuk Fun Fact
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(8), // Jarak dalam frame
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2), // Warna dan ketebalan border
                    borderRadius: BorderRadius.circular(
                        8), // Membuat border dengan sudut melengkung
                  ),
                  child: Text(
                    'Fun Fact',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Saya suka bersih-bersih file laptop!',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255)),
      debugShowCheckedModeBanner: false,
      title: 'LasCar',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: MyBody(),
      bottomNavigationBar: const MyFooter(height: 60),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Las'car",
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 38, 191, 241),
      actions: [
        IconButton(
          icon: Icon(Icons.search_outlined, color: Colors.grey[800], size: 24),
          onPressed: null,
        ),

        PopupMenuButton<int>(
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.grey[800],
            size: 24,
          ),
          onSelected: (value) {
            if (value == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupPage()),
              );
            }
          },
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Row(
                children: const [
                  Icon(Icons.person, color: Colors.blue),
                  SizedBox(width: 8),
                  Text("Se connecter"),
                ],
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Row(
                children: const [
                  Icon(Icons.app_registration, color: Colors.blue),
                  SizedBox(width: 8),
                  Text("S'inscrire"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://cdn.blablacar.com/k/a/images/hero_CPL_OB_Train-bc6ddb3c0cd19529.webp',
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),

        Positioned.fill(
          child: Opacity(
            opacity: 0.5,
            child: Container(color: const Color(0xFF000000)),
          ),
        ),

        Positioned(
          bottom: 130,
          left: 20,
          right: 20,
          child: Text(
            "Las'car - Le covoit' sans blabla",
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w800,
              shadows: [
                Shadow(
                  blurRadius: 10,
                  color: Colors.black54,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class MyFooter extends StatelessWidget {
  final double height;
  const MyFooter({Key? key, required this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 38, 191, 241),
      height: height,
      child: Text(
        "Las'Car Footer",
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

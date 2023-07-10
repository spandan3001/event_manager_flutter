import 'package:event_manager/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  final double clipHeight = 150;
  final double profileImageHeight = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      backgroundColor: primary,
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              width: double.infinity,
              height: clipHeight,
              color: buttonColor,
            ),
          ),
          Positioned(
            top: clipHeight - profileImageHeight / 2,
            child: CircleAvatar(
              radius: profileImageHeight / 2,
              backgroundImage: const AssetImage('assets/login.jpg'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: profileImageHeight / 2),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: mainFontColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Software Engineer',
                    style: TextStyle(fontSize: 16, color: mainFontColor),
                  ),
                  SizedBox(height: 16),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text(
                      'john.doe@example.com',
                      style: TextStyle(color: mainFontColor),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      '+1 123 456 7890',
                      style: TextStyle(color: mainFontColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    final path = Path();

    path.lineTo(0, height - 40);
    path.quadraticBezierTo(width / 2, height + 40, width, height - 40);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

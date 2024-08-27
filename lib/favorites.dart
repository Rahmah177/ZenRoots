import 'package:flutter/material.dart';
import 'CustomBottomNavigationBar.dart';

class favorites extends StatefulWidget {
  const favorites({Key? key}) : super(key: key);
  static const String route = '/favorites';

  @override
  _favoritesState createState() => _favoritesState();
}

class _favoritesState extends State<favorites> {
  int _currentIndex = 3;
  final List<String> imagePaths = [
    'assets/images/q5.png',
    'assets/images/q4.png',
    'assets/images/q3.png',
    'assets/images/q2.png',
    'assets/images/q1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/Ellipse 2-2.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 140,
                  left: 20,
                  child: Text(
                    'Discover your favorites',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Color(0xff4F4351),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  final imagePath = imagePaths[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

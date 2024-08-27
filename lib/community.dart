import 'package:flutter/material.dart';
import 'CustomBottomNavigationBar.dart';

class community extends StatefulWidget {
  const community({super.key});
  static const String route = '/community';

  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> {
  int _currentIndex = 1;

  Widget _buildCommunityCard({
    required String title,
    required String time,
    required String description,
    required String mainImagePath,
    required List<String> bottomImages,
  }) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 175,
      decoration: BoxDecoration(
        color: Color(0xffF6EBF8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                child: Image.asset(mainImagePath),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff80848B),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          // Description under the image
          Text(
            description,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Color(0xff655568),
            ),
          ),
          SizedBox(height: 10),

          Row(
            children: bottomImages.map((imagePath) => Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 30,
                height: 30,
                child: Image.asset(imagePath),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/Ellipse 2.png'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'Recent posts',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'Share with your friends what makes you happy to inspire them!',
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 10),

                      _buildCommunityCard(
                        title: 'Laila Mohamed',
                        time: '29 min ago',
                        description: 'I drank a large amount of water today and it really helped me to improve my mood. Stay hydrated!',
                        mainImagePath: 'assets/images/1.png',
                        bottomImages: [
                          'assets/images/ov.png',
                          'assets/images/op.png',
                          'assets/images/o.png',
                        ],
                      ),
                      SizedBox(height: 10),
                      _buildCommunityCard(
                        title: 'Menna Elgyar',
                        time: '29 min ago',
                        description: 'I plant a new tree today and I was really happy making this, I felt the connection to nature and the cycle of life.',
                        mainImagePath: 'assets/images/2.png',
                        bottomImages: [
                          'assets/images/ov.png',
                          'assets/images/op.png',
                          'assets/images/o.png',
                        ],
                      ),
                      SizedBox(height: 10),
                      _buildCommunityCard(
                        title: 'Amr Mustafa',
                        time: '1 hr ago',
                        description: 'After talking with my friends today, I felt that life is worth to be living. I really love my friends.',
                        mainImagePath: 'assets/images/3.png',
                        bottomImages: [
                          'assets/images/ov.png',
                          'assets/images/op.png',
                          'assets/images/o.png',
                        ],
                      ),
                      SizedBox(height: 10),
                      _buildCommunityCard(
                        title: 'Omar Nabil',
                        time: '1 hr ago',
                        description: 'After talking with my friends today, I felt that life is worth to be living. I really love my friends.',
                        mainImagePath: 'assets/images/3.png',
                        bottomImages: [
                          'assets/images/ov.png',
                          'assets/images/op.png',
                          'assets/images/o.png',
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 80,
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff87728B),
              ),
              child: IconButton(
                icon: Icon(Icons.add, size: 25, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),

        ],
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

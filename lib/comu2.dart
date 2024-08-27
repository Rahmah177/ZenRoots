import 'package:flutter/material.dart';

import 'CustomBottomNavigationBar.dart';

class comu2 extends StatefulWidget {
  const comu2({super.key});
  static const String route = '/comu2';

  @override
  State<comu2> createState() => _comu2State();
}

class _comu2State extends State<comu2> {
   int _currentIndex =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbf5fb),
      body: SafeArea(
        child: Column(


          children: [     SizedBox(height: 231,),
            Container( width:double.infinity,
            child:  Row(
              children: [
                SizedBox(width: 150,),
                Image.asset('assets/images/IEEE CS.png'),
              ],
            )
          ),SizedBox(height: 22,),
            Text('IEEE Community', style:
            TextStyle(fontSize: 33, fontWeight: FontWeight.bold,color: Color(0xffCBABD0)),)
              ,SizedBox(height: 22,),
            Text('You can join our community, make new friends and share your habits with them! '
                ,textAlign: TextAlign.center
                ,style:
                TextStyle(fontSize: 23, fontWeight: FontWeight.w400,color: Color(0xff4F4351))),
            SizedBox(height: 32,),
            Container(
              width: 380.0,
              height: 40.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffB498B9)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                  elevation: MaterialStateProperty.all(4.0),
                ),
                child: Text(
                  'Invite your friends',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )

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

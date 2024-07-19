import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 90,),
          Image.asset(
            'assets/images/radio_image.png',
            height: 222,
            width: 412,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'اذاعة القران الكريم',
            style: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {}, child: Icon(Icons.skip_previous),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB7935F),
                    iconColor: Colors.white,

                  ),),
              ),),Expanded(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {}, child: Icon(Icons.pause),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB7935F),
                    iconColor: Colors.white,

                  ),),
              ),),Expanded(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {}, child: Icon(Icons.skip_next),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB7935F),
                    iconColor: Colors.white,

                  ),),
              ),),
            ],
          )
        ],
      ),

    );
  }
}

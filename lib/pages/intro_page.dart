import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 143, 50, 43),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            // shop name
            Text(
              'SUSHI MAN',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            // icon
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset('lib/images/sushi_eggs.png',
                height: 250,
              ),
            ),

            // title
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            // subtitle
            Text(
              'Experience the authentic taste of Japan with our fresh and flavorful sushi rolls, crafted by expert chefs just for you.',
              style: GoogleFonts.openSans(fontSize: 16, color: Colors.white),
            ),

            const SizedBox(height: 25),

            // get started button
            MyButton(text: 'Get Started', onTap: () {
              Navigator.pushNamed(context, '/menupage');
            },),
          ],
        ),
      ),
    );
  }
}

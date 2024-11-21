import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/Vector.png",
                scale: 1,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 80,
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset("assets/images/myvitalz.png"),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset("assets/images/doctorsvg.svg"),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

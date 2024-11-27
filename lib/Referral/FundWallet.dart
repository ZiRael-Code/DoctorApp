import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const FundWallet());
}

class FundWallet extends StatelessWidget {
  const FundWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                width: 35,
                height: 35,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFE5E5E5),
                ),
                child: SvgPicture.asset('assets/images/back.svg',
                  width: 8.0,
                  height: 15,),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                child:
                const Text(
                  'Fund wallet',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const Spacer(),

            ],
          ),
        ),
        body: Column(
          children: [
           fundMethod(text: "Online payment",
          imagePath: "assets/images/wallet.svg",
          icon:  const Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,)
           ),
            fundMethod(text: "Bank transfer",
                imagePath: "assets/images/bank.svg",
               icon:  const Icon(Icons.keyboard_arrow_down_sharp, size: 32,color: Colors.blue,)
           ),
          ],
      ),
      ),
    );
  }
}

fundMethod (
{

required String text,
  required String imagePath,
required Icon icon,
}){
    return Padding(padding: const EdgeInsets.all(15),
      child: Container(
        padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 74,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFE5E5E5),
          width: 0.5,
        ),
      ),
        child: Row(children: [
          Container(
            width: 42,
            height: 42,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFFE2EDFF),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(imagePath),
          ),
      const SizedBox(width: 25,),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF2E2E42),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        const Spacer(),
         icon

        ],),
    ),
    );
  }


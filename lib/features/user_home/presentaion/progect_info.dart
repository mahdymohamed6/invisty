import 'package:flutter/material.dart';
import 'package:investify/features/user_home/presentaion/widget/owner_info.dart';
import 'package:investify/features/user_home/presentaion/widget/progect_description.dart';
import 'package:investify/features/user_home/presentaion/widget/progect_image_info.dart';
import 'package:investify/features/user_home/presentaion/widget/video_widget.dart';

class ProgectInfoView extends StatelessWidget {
  const ProgectInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            ProgectImageInfo(),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: Text(
                'Description',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'dongel',
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF258B66),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ProgectDescription(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: OwnerInfo(),
            ),
            SizedBox(
              height: 28,
            ),
            InvestButtom(),
            SizedBox(
              height: 28,
            ),
            VideoWidget()
          ],
        ),
      ),
    );
  }
}

class InvestButtom extends StatelessWidget {
  const InvestButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFF17B861),
          ),
          child: Center(
            child: InkWell(
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const ProgectInfoView()),
                // );
              },
              child: const Center(
                child: Text(
                  'invest now',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

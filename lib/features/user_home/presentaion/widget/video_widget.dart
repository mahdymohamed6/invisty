import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              'video of the progect',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Container(
              height: 260,
              width: 350,
              color: Colors.grey,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 14, top: 12, bottom: 30),
            child: Text(
              'Schedule a call',
              style: TextStyle(
                fontSize: 20,
                color: Color(0XFF00C35A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

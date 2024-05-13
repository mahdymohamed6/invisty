import 'package:flutter/material.dart';
import 'package:investify/features/user_home/presentaion/progect_info.dart';

class ProgectListViewItem extends StatelessWidget {
  const ProgectListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 188,
      width: 320,
      decoration: BoxDecoration(
          color: const Color(0XFFD9D9D9),
          borderRadius: BorderRadius.circular(22)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 6,
          ),
          const Text(
            'Modern Factory',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontFamily: 'dongel'),
          ),
          const SizedBox(
            height: 14,
          ),
          const Text(
            'what you like to see ? it’s a how you set your foot for 2020 stock very different from 2018 this market ',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontFamily: 'dongel'),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220),
            child: Container(
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF17B861),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProgectInfoView()),
                    );
                  },
                  child: const Text(
                    'More',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0XFFE6FDF0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

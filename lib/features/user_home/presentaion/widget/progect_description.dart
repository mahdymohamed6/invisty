import 'package:flutter/material.dart';
import 'package:investify/features/user_home/presentaion/all_description.dart';

class ProgectDescription extends StatelessWidget {
  const ProgectDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Text(
            'A well-prepared project plan not only serves as a roadmap for project execution but also brings about various advantages that contribute to a project’s all-',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'dangrek',
              color: Color(0XFF403E3E),
            ),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFF17B861),
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllDescription()),
                      );
                    },
                    child: const Center(
                      child: Text(
                        'show more',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFFE6FDF0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 27,
          backgroundImage: AssetImage('lib/assets/images/man.png'),
        ),
        SizedBox(
          width: 17,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gerry Allen',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'dongel',
                color: Colors.black,
              ),
            ),
            Text(
              'Owner',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'dongel',
                color: Color(0XFF6C6767),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

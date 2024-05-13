import 'package:flutter/material.dart';

class UserProgectListViewItem extends StatelessWidget {
  const UserProgectListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 188,
      width: 320,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Modern Factory',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'dongel',
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'what you like to see? it’s a how you set your foot for 2020 stock very different from 2018 this market',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'dongel',
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 280),
              child: PopupMenuButton<String>(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  size: 28,
                ),
                onSelected: (String value) {
                  if (value == 'Delete') {
                    // Perform the desired action when "Delete" is selected
                    // Your code here
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Delete',
                    child: Text(
                      'Delete',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

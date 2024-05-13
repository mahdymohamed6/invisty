import 'package:flutter/material.dart';
import 'package:investify/features/control_page.dart';
import 'package:investify/features/profile/presentation/widgets/user_progect_list_view_item.dart';

class UserProgectView extends StatelessWidget {
  const UserProgectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ControlPage(
                        initialIndex: 2,
                      )),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(right: 16),
        child: Center(
          child: Column(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  Text(
                    'Welcome,Jonas',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: 'dongel'),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 22, right: 22, bottom: 16),
                      child: UserProgectListViewItem(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

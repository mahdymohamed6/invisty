import 'package:flutter/material.dart';
import 'package:investify/features/add_progect/presentatin/add_progect.dart';
import 'package:investify/features/profile/presentation/profile_view.dart';
import 'package:investify/features/user_home/presentaion/user_home.dart';

class ControlPage extends StatefulWidget {
  final int initialIndex; // New parameter

  const ControlPage({Key? key, this.initialIndex = 0})
      : super(key: key); // Updated constructor

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  int selectedIndex = 0;
  static List<Widget> screens = [
    const UserHome(),
    const AddProgectView(),
    const ProfileView(),
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    selectedIndex =
        widget.initialIndex; // Set initial index from the constructor
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          color: Color(0XFF00C35A),
          fontSize: 15,
          fontFamily: 'Poppins',
        ),
        unselectedLabelStyle: const TextStyle(
          color: Color(0XFF00C35A),
          fontSize: 15,
          fontFamily: 'Poppins',
        ),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: selectedIndex == 0
                ? const Icon(
                    Icons.home,
                    color: Color(0XFF00C35A),
                  )
                : const Icon(
                    Icons.home,
                  ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 1
                ? const Icon(
                    Icons.add,
                    color: Color(0XFF00C35A),
                  )
                : const Icon(
                    Icons.add,
                  ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 2
                ? const Icon(
                    Icons.person,
                    color: Color(0XFF00C35A),
                  )
                : const Icon(
                    Icons.person,
                  ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color(0XFF00C35A),
        onTap: onItemTapped,
      ),
    );
  }
}

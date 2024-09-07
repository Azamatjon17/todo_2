import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/views/screens/calendar/calendar_screen.dart';
import 'package:todo/views/screens/focuse/focuse_screen.dart';
import 'package:todo/views/screens/home/home_screen.dart';
import 'package:todo/views/screens/profile/profile_screen.dart';

class ManegePage extends StatefulWidget {
  const ManegePage({super.key});

  @override
  State<ManegePage> createState() => _ManegePageState();
}

class _ManegePageState extends State<ManegePage> {
  int currentPage = 0;
  List<Widget> screens = [
    HomeScreen(),
    CalendarScreen(),
    FocuseScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: currentPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Index',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Focus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          height: 50.h,
          width: 50.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 153, 138, 247),
          ),
          child: const Icon(
            Icons.add,
            size: 35,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

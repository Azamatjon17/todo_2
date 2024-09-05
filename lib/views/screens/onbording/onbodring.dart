import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/views/screens/auth/login_screen.dart';
import 'custom_on_bording.dart'; // Make sure this import path is correct

class Onbodring extends StatefulWidget {
  const Onbodring({super.key});

  @override
  State<Onbodring> createState() => _OnbodringState();
}

class _OnbodringState extends State<Onbodring> {
  final PageController pageController = PageController();
  int currentPage = 0;

  void _nextPage() {
    if (currentPage < 2) {
      // Assuming you have 3 pages
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
    if (currentPage == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    }
  }

  void _skipToLastPage() {
    pageController.animateToPage(
      2, // Last page index
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: _skipToLastPage,
                child: const Text(
                  'SKIP',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                child: Center(
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                    children: onBodringPages,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: currentPage > 0
                          ? () {
                              pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            }
                          : null,
                      child: Text(
                        'BACK',
                        style: TextStyle(
                          color: currentPage > 0 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20.w),
                        InkWell(
                          onTap: _nextPage,
                          child: Container(
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff8875FF),
                            ),
                            child:
                                Text(currentPage == 2 ? 'Get Started' : 'NEXT'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:auxzon/screens/home/sections/section_1.dart';
import 'package:auxzon/screens/home/sections/section_2.dart';
import 'package:auxzon/screens/home/sections/section_3.dart';
import 'package:auxzon/screens/home/sections/section_4.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _screens = [
    const Section1(),
    const Section2(),
    const Section3(),
    const Section4(),
    const Section4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80.0, // Set the height for the BottomNavigationBar
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SizedBox(
                      width: 45,
                      height: 45,
                      child: Stack(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                          const Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  : const Icon(
                      Icons.search,
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SizedBox(
                      width: 45,
                      height: 45,
                      child: Stack(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                          const Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  : const Icon(
                      Icons.favorite,
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SizedBox(
                      width: 45,
                      height: 45,
                      child: Stack(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                          const Center(
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  : const Icon(
                      Icons.home,
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SizedBox(
                      width: 45,
                      height: 45,
                      child: Stack(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                          const Center(
                            child: Icon(
                              Icons.card_travel,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  : const Icon(
                      Icons.card_travel,
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 4
                  ? SizedBox(
                      width: 45,
                      height: 45,
                      child: Stack(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                          const Center(
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  : const Icon(
                      Icons.person,
                    ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

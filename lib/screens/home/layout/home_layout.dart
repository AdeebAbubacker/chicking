import 'package:auxzon/screens/home/sections/section_1.dart';
import 'package:auxzon/screens/home/sections/section_2.dart';
import 'package:auxzon/screens/home/sections/section_3.dart';
import 'package:auxzon/screens/home/sections/section_4.dart';
import 'package:auxzon/screens/home/sections/section_5.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 2;
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
    const Section5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: (_selectedIndex == 0 ||
                _selectedIndex == 1 ||
                _selectedIndex == 3 ||
                _selectedIndex == 4)
            ? Color(0XFFFCFCFF)
            : Color.fromARGB(255, 247, 247, 247),
        // backgroundColor:  if(_selectedIndex) const Color.fromARGB(255, 247, 247, 247),
        body: _screens[_selectedIndex],
        bottomNavigationBar: Container(
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                  onTap: () => _onItemTapped(0),
                  child: _selectedIndex == 0
                      ? Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(Icons.search, color: Colors.white),
                        )
                      : const SizedBox(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.search, color: Colors.grey),
                        )),
              GestureDetector(
                  onTap: () => _onItemTapped(1),
                  child: _selectedIndex == 1
                      ? Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:
                              const Icon(Icons.favorite, color: Colors.white),
                        )
                      : const SizedBox(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.favorite, color: Colors.grey),
                        )),
              GestureDetector(
                  onTap: () => _onItemTapped(2),
                  child: _selectedIndex == 2
                      ? Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(Icons.home, color: Colors.white),
                        )
                      : const SizedBox(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.home, color: Colors.grey),
                        )),
              GestureDetector(
                  onTap: () => _onItemTapped(3),
                  child: _selectedIndex == 3
                      ? Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(Icons.card_travel,
                              color: Colors.white),
                        )
                      : const SizedBox(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.card_travel, color: Colors.grey),
                        )),
              GestureDetector(
                  onTap: () => _onItemTapped(4),
                  child: _selectedIndex == 4
                      ? Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(Icons.person, color: Colors.white),
                        )
                      : const SizedBox(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.person, color: Colors.grey),
                        )),
            ],
          ),
        ));
  }
}

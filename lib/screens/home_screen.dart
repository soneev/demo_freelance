import 'package:flutter/material.dart';
import 'package:freelance_project_ui/screens/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screens = [
      const Center(
        child: Text('Home'),
      ),
      const Center(
        child: Text('Opportunity'),
      ),
      const Center(
        child: Text('Sell/Buy'),
      ),
      const Center(
        child: Text('Wishlist'),
      ),
      const ProfileScreen()
    ];

    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,

        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            //SvgPicture.asset("assets/svg/home.svg"),
            label: "home",
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            //SvgPicture.asset("assets/svg/home.svg"),
            label: "opportunity",
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            //SvgPicture.asset("assets/svg/home.svg"),
            label: "sell/buy",
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            //SvgPicture.asset("assets/svg/home.svg"),
            label: "wishlist",
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            //SvgPicture.asset("assets/svg/home.svg"),
            label: "profile",
            activeIcon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
          ),
        ],
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:freelance_project_ui/const/colors.dart';
import 'package:freelance_project_ui/screens/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 4;
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
        type:BottomNavigationBarType.fixed ,
        backgroundColor: Colors.white,

        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },

        selectedItemColor: mainColor,
       unselectedItemColor: Colors.grey,
        selectedFontSize: 8,
        unselectedFontSize: 8,
        showUnselectedLabels: true,
        unselectedLabelStyle:const TextStyle(color: Colors.red) ,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,

        items:    [
          BottomNavigationBarItem(
            icon: Image.asset("assets/home.png",height: 28,),
            //SvgPicture.asset("assets/svg/home.svg"),
            label: "home",
            activeIcon: Image.asset("assets/home.png",height: 28,)
          ),
          BottomNavigationBarItem(
            icon:  Image.asset("assets/carbon_compass.png",height: 28,),
            //SvgPicture.asset("assets/svg/home.svg"),
            label: "opportunity",
            activeIcon: Image.asset("assets/carbon_compass.png",height: 28,) ),
          
          BottomNavigationBarItem(
            icon:  Image.asset("assets/shop_bag.png",height: 28,),
            //SvgPicture.asset("assets/svg/home.svg"),
            label: "sell/buy",
            activeIcon:  Image.asset("assets/shop_bag.png",height: 28,),
          ),
          BottomNavigationBarItem(
            icon:  Image.asset("assets/heart.png",height: 21,),
            //SvgPicture.asset("assets/svg/home.svg"),
            label: "wishlist",
            activeIcon: Image.asset("assets/heart.png",height: 30,),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/account.png",height: 30,),
            //SvgPicture.asset("assets/svg/home.svg"),
            label: "profile",
            activeIcon:Image.asset("assets/account.png",height: 30,)
          ),
        ],
      ),

    );
  }
}

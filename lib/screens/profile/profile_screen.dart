// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(

//           bottom:  const TabBar(
//                   labelColor: Colors.blue,
//                   labelStyle: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold
//                   ),
//                   indicatorColor: Colors.blue,
//                   indicatorSize: TabBarIndicatorSize.label,
//                   unselectedLabelColor: Colors.grey,
//                   tabs: [
//                     Tab(
//                       text: 'About',
//                     ),
//                     Tab(
//                       text: 'Photos',
//                     ),
//                      Tab(
//                       text: 'Sell',
//                     )
//                   ]),
//         ),
//       ),
//     );
//   }
// }

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freelance_project_ui/const/colors.dart';
import 'package:freelance_project_ui/screens/about/about_screen.dart';
import 'package:freelance_project_ui/screens/photos/photos_sceens.dart';

import 'clipper/clipper_details.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isFollowed = false;

  void _toggleFollow() {
    setState(() {
      _isFollowed = !_isFollowed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //custom app bar
              // Stack(
              //   children: [
              //     Container(
              //       width: MediaQuery.of(context).size.width,
              //       height: 220,
              //       decoration: const BoxDecoration(
              //         gradient: LinearGradient(
              //           colors: [
              //             Color.fromARGB(0, 1, 1, 243),
              //             Color(0xFFF6EFE9)

              //             // Color(0xFFFACCCC), Color(0xFFF6EFE9)
              //           ],
              //         ),
              //       ),
              //     ),
              //     const Positioned(
              //       top: 50,
              //       bottom: 10,
              //       child: CircleAvatar(
              //         radius: 100,
              //         backgroundImage: AssetImage("assets/dp.jpg"),
              //       ),
              //     )
              //   ],
              // ),

              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 150,
                            child: Image.asset("assets/appbarbg.png",fit: BoxFit.cover,),
                          ),
                          Container(
                            child: Image.asset("assets/"),
                          )
                        ],
                      ),
                      Container(
                        height: 300,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Center(
                        child: CircleAvatar(
                          radius: 85,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 75,
                            backgroundImage: AssetImage('assets/dp.jpg'),
                          ),
                        ),
                      ),
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.cake),
                          SizedBox(
                            width: 12,
                          ),
                          Text('10 - 10 - 1998'),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.male),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Male')
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.location_on_outlined),
                          SizedBox(
                            width: 12,
                          ),
                          Text('London , '),
                          SizedBox(
                            width: 10,
                          ),
                          Text('United Kingdom')
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Follow Button
                          ElevatedButton(
                            onPressed: _toggleFollow,
                            style: ElevatedButton.styleFrom(
                              primary:buttonColor, 
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  _isFollowed ? 'Following' : 'Follow',
                                  style: TextStyle(
                                    color: _isFollowed
                                        ? Colors.white
                                        : Colors.white,
                                  ),
                                ),
                                _isFollowed
                                    ? const Icon(Icons.check)
                                    : const Icon(Icons.add)
                              ],
                            ),
                          ),

                          const SizedBox(width: 10),

                          //Share Button

                          ElevatedButton(
                            onPressed: _toggleFollow,
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side:const  BorderSide(
                                  color: buttonColor,
                                ),
                              ),
                            ),
                            child:const  Icon(
                              Icons.share_outlined,
                              color:buttonColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(image: AssetImage('assets/fb.png')),
                          SizedBox(
                            width: 40,
                          ),
                          Image(image: AssetImage('assets/insta.png')),
                          SizedBox(
                            width: 40,
                          ),
                          Image(image: AssetImage('assets/linkedin.png')),
                          SizedBox(
                            width: 40,
                          ),
                          Image(image: AssetImage('assets/youtube.png')),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        '120',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('Posts'),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 1.0,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Column(
                    children: const [
                      Text(
                        '240',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('Followers'),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 1.0,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Column(
                    children: const [
                      Text(
                        '360',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('Following'),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                   appBar: AppBar(
                    elevation: 0,
                    toolbarHeight: 5,
                    backgroundColor: Colors.white,
                      bottom: 
                      
                       const TabBar(
                        
                      labelColor:mainColor,
                      labelStyle:  TextStyle(
                        fontSize: 12,
                        
                      ),
                      indicatorColor: mainColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          icon: Image(
                            height: 30,
                            image: AssetImage("assets/tab/contact.png")),
                          text: 'About',
                        ),
                        Tab(
                          icon:  Image(
                            height: 30,
                            image: AssetImage("assets/tab/galery.png")),
                          text: 'Photos',
                        ),
                         Tab(
                          icon:  Image(
                            height: 30,
                            image: AssetImage("assets/tab/shop.png")),
                          text: 'Sell',
                        )
                      ]),
                        ),
                        body: const TabBarView(children: [
                          AboutScreen(),
                          PhotosScreen(),
                          AboutScreen(),
                        ]),
                    ),
                ),
              ),
              

            ],
          ),
        ),
      ),
    );
  }
}

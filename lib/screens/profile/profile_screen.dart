import 'package:flutter/material.dart';
import 'package:freelance_project_ui/const/colors.dart';
import 'package:freelance_project_ui/screens/about/about_screen.dart';
import 'package:freelance_project_ui/screens/photos/photos_sceens.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../seller/product_sell.dart';
import 'widgets/follow_details_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  bool _isFollowed = false;

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

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
                customAppBar(),
                const FollowDetail(),
                tabBar(context),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _tabController.index == 0
            ? const SizedBox()
            : SizedBox(
                width: 130,
                height: 35,
                child: FloatingActionButton.extended(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: buttonColor,
                    onPressed: () {},
                    label: Row(
                      children: const [
                        Icon(
                          Icons.add_outlined,
                          size: 23,
                        ),
                        Text("Add Image"),
                      ],
                    )),
              ));
  }

// Tab Bar
  SizedBox tabBar(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 5,
            backgroundColor: Colors.transparent,
            bottom: TabBar(
                controller: _tabController,
                labelColor: mainColor,
                labelStyle: const TextStyle(
                  fontSize: 12,
                ),
                indicatorColor: mainColor,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    icon: _tabController.index == 0
                        ? const Image(
                            height: 25,
                            image: AssetImage("assets/tab/actcontact.png"))
                        : const Image(
                            height: 25,
                            image: AssetImage("assets/tab/contact.png")),
                    text: 'About',
                  ),
                  Tab(
                    icon: _tabController.index == 1
                        ? const Image(
                            height: 25,
                            image: AssetImage("assets/tab/galery.png"))
                        : const Image(
                            height: 25,
                            image: AssetImage("assets/tab/ungallery.png")),
                    text: 'Photos',
                  ),
                  Tab(
                    icon: _tabController.index == 2
                        ? const Image(
                            height: 25,
                            image: AssetImage("assets/tab/actshop.png"))
                        : const Image(
                            height: 25,
                            image: AssetImage("assets/tab/shop.png")),
                    text: 'Sell',
                  )
                ]),
          ),
          body: TabBarView(controller: _tabController, children: const [
            AboutScreen(),
            PhotosScreen(),
            ProductSell(),
          ]),
        ),
      ),
    );
  }

  //App bar
  Stack customAppBar() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  height: 150,
                  child: Image.asset(
                    "assets/appbarbg.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            "assets/svgs/menu.svg",
                            height: 48,
                            width: 48,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            "assets/svgs/category.svg",
                            height: 48,
                            width: 48,
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            "assets/svgs/bell.svg",
                            height: 48,
                            width: 48,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            "assets/svgs/cart.svg",
                            height: 48,
                            width: 48,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 290,
              color: Colors.transparent,
            ),
          ],
        ),
        Positioned(
          top: 70,
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: 
                    
                    AssetImage('assets/dp.png')
                    
                    ,
                  ),
                ),
              ),
              const Text(
                'Keirra Gouse',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,color: mainColor
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.cake,
                    color: mainColor,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    '10 - 10 - 1998',
                    style: TextStyle(color: mainColor),
                  ),
                  Container(
                    height: 20,
                    width: 1.0,
                    color: Colors.grey.withOpacity(0.5),
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  const Icon(
                    Icons.male,
                    color: mainColor,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text('Female', style: TextStyle(color: mainColor))
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'London , ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('United Kingdom', style: TextStyle(color: Colors.grey))
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  followButton(),
                  const SizedBox(width: 10),
                  shareButton(),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(image: AssetImage('assets/fb.png')),
                  SizedBox(
                    width: 30,
                  ),
                  Image(image: AssetImage('assets/insta.png')),
                  SizedBox(
                    width: 30,
                  ),
                  Image(image: AssetImage('assets/linkedin.png')),
                  SizedBox(
                    width: 30,
                  ),
                  Image(image: AssetImage('assets/youtube.png')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

// Share Button
  ElevatedButton shareButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: buttonColor,
          ),
        ),
      ),
      child: const Icon(
        Icons.share_outlined,
        color: buttonColor,
      ),
    );
  }

//Follow Button
  ElevatedButton followButton() {
    return ElevatedButton(
      onPressed: _toggleFollow,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Text(
            _isFollowed ? 'Following' : 'Follow',
            style: TextStyle(
              color: _isFollowed ? Colors.white : Colors.white,
            ),
          ),
          _isFollowed ? const Icon(Icons.check) : const Icon(Icons.add)
        ],
      ),
    );
  }
}

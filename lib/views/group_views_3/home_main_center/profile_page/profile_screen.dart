import 'package:flutter/material.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:fruit_market_summer/controller/input_data/init_user.dart';
import 'package:fruit_market_summer/model/icons_custom/my_flutter_app_icons.dart';
import 'package:fruit_market_summer/views/group_views_2/login_screen/home_login_screen.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/favourite_page/favourite_screen.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/profile_page/item_list_views_profile/help/help_screen.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/profile_page/item_list_views_profile/my_order/my_order_screen.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/profile_page/item_list_views_profile/setting/setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size.height * 0.205,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFF69A03A),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: heightDevice(0.001)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        padding: EdgeInsets.all(1),
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(360.0),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(manish_chutake.getImageSrc),
                            width: size.width * 0.1,
                            height: size.width * 0.1,
                          ),
                        ),
                        width: size.width * 0.22,
                        height: size.width * 0.22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          color: Colors.white,
                        )),
                    SizedBox(width: witdthDevice(0.3)),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 55),
                      child: Icon(
                        MyFlutterApp.edit,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: witdthDevice(0.06)),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  "${manish_chutake.getName}",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: heightDevice(0.01)),
                Text(
                  "${manish_chutake.getEmail}",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          // List menu profile
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  // My Order
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyOrderScreen())),
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        color: Colors.white,
                        height: size.height * 0.074,
                        child: ListTile(
                          leading: Icon(
                            Icons.shopping_bag,
                            size: size.width * 0.075,
                            color: Color(0xFF69A03A),
                          ),
                          title: Text(
                            'My Orders',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        )),
                  ),
                  Container(
                      color: Colors.grey[300], height: heightDevice(0.002)),
                  // Favourites
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavouriteScreen(
                                  flagAppBar: false,
                                ))),
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        color: Colors.white,
                        height: size.height * 0.074,
                        child: ListTile(
                          leading: Icon(
                            Icons.favorite,
                            size: size.width * 0.075,
                            color: Color(0xFF69A03A),
                          ),
                          title: Text(
                            'Favourites',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        )),
                  ),
                  Container(
                      color: Colors.grey[300], height: heightDevice(0.002)),
                  // Settings
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingScreen())),
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        color: Colors.white,
                        height: size.height * 0.074,
                        child: ListTile(
                          leading: Icon(
                            Icons.settings,
                            size: size.width * 0.075,
                            color: Color(0xFF69A03A),
                          ),
                          title: Text(
                            'Settings',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        )),
                  ),
                  Container(
                      color: Colors.grey[300], height: heightDevice(0.002)),
                  // My Cart
                  Container(
                      alignment: Alignment.bottomCenter,
                      color: Colors.white,
                      height: size.height * 0.074,
                      child: ListTile(
                        leading: Icon(
                          Icons.shopping_cart,
                          size: size.width * 0.075,
                          color: Color(0xFF69A03A),
                        ),
                        title: Text(
                          'My Cart',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      )),
                  Container(
                      color: Colors.grey[300], height: heightDevice(0.002)),
                  // Rate us
                  Container(
                      alignment: Alignment.bottomCenter,
                      color: Colors.white,
                      height: size.height * 0.074,
                      child: ListTile(
                        leading: ImageIcon(
                          AssetImage("assets/icons/rate_us.png"),
                          color: Color(0xFF69A03A),
                          size: 36,
                        ),
                        title: Text(
                          ' Rate us',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      )),
                  Container(
                      color: Colors.grey[300], height: heightDevice(0.002)),
                  // Refer a Friend
                  Container(
                      alignment: Alignment.bottomCenter,
                      color: Colors.white,
                      height: size.height * 0.074,
                      child: ListTile(
                        leading: Icon(
                          Icons.share,
                          size: size.width * 0.075,
                          color: Color(0xFF69A03A),
                        ),
                        title: Text(
                          'Refer a Friend',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      )),
                  Container(
                      color: Colors.grey[300], height: heightDevice(0.002)),
                  // Help
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HelpScreen())),
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        color: Colors.white,
                        height: size.height * 0.074,
                        child: ListTile(
                          leading: Icon(
                            Icons.help,
                            size: size.width * 0.075,
                            color: Color(0xFF69A03A),
                          ),
                          title: Text(
                            'Help',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        )),
                  ),
                  Container(
                      color: Colors.grey[300], height: heightDevice(0.002)),
                  // Log Out
                  InkWell(
                    onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomeLoginScreen(),
                      ),
                      (route) => false,
                    ),
                    child: Container(
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        child: ListTile(
                          leading: Icon(
                            Icons.logout_rounded,
                            size: size.width * 0.075,
                            color: Color(0xFF69A03A),
                          ),
                          title: Text(
                            'Log Out',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

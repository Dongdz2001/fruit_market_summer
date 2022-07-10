import 'package:flutter/material.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/home_page/home_screen.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/profile_page/profile_screen.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  _HomeMainScreenState createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Scaffold(
            appBar: _selectedIndex != 0
                ? AppBar(
                    backgroundColor: Color(0xFF69A03A),
                    elevation: 0,
                  )
                : AppBar(
                    elevation: 0,
                    toolbarHeight: 55, // Set this height
                    flexibleSpace: Container(
                      color: Color(0xFF69A03A),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 220, top: 10),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: 'F',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  TextSpan(text: 'ruit Market'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            body: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.grey,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                    // backgroundColor: Colors.red,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined),
                    label: 'Shopping cart',
                    // backgroundColor: Colors.green,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: 'Favoutrite',
                    // backgroundColor: Colors.purple,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),
                    label: 'My Account',
                    // backgroundColor: Colors.pink,
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Color(0xFF769E49),
                unselectedItemColor: Colors.black,
                onTap: _onItemTapped,
              ),
            ),
          ),
          //     ),
          //   ),
        ),
      ],
    );
  }
}



//  appBar: AppBar(
//             elevation: 0,
//             toolbarHeight: 30, // Set this height
//             flexibleSpace: Container(
//               color: Color(0xFF69A03A),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(right: 200, bottom: 30),
//                     child: RichText(
//                       text: TextSpan(
//                         style: TextStyle(
//                             fontFamily: "Poppins",
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                         children: const <TextSpan>[
//                           TextSpan(
//                             text: 'F',
//                             style: TextStyle(fontSize: 30),
//                           ),
//                           TextSpan(text: 'ruit Market'),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
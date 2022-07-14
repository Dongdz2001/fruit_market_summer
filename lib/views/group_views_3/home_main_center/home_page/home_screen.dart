import 'package:flutter/material.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/home_page/pageviews_home/dry_fruits_pageviews.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/home_page/pageviews_home/fruits_pageviews.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/home_page/pageviews_home/vegetables_pageviews.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Column(
            children: [
              Container(
                height: heightDevice(0.1),
                color: Color(0xFF69A03A),
              ),
              SizedBox(
                height: heightDevice(0.085),
              ),
              // give the tab bar a height [can change hheight to preferred height]
              Container(
                height: heightDevice(0.085),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: TabBar(
                  controller: _tabController,
                  labelStyle: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Family Name',
                      fontWeight: FontWeight.w600),
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                    color: Color(0xFFCC7D00),
                  ),
                  labelColor: Colors.white,
                  labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    // first tab [you can add an icon using the icon property]
                    SizedBox(
                      width: witdthDevice(0.25),
                      child: Tab(
                        text: 'Vegetables',
                      ),
                    ),
                    SizedBox(
                      width: witdthDevice(0.25),
                      child: Tab(
                        text: 'Fruits',
                      ),
                    ),
                    SizedBox(
                      width: witdthDevice(0.25),
                      child: Tab(
                        text: 'Dry Fruits',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightDevice(0.03),
              ),
              // tab bar view here
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // first tab bar view widget
                    VegetablesPageviews(),
                    // second tab bar view widget
                    FruitsPageviews(),
                    DryFruitsPageviews()
                  ],
                ),
              ),
            ],
          ),
        ),

        //Search listitle
        Positioned(
          top: heightDevice(0.02),
          left: witdthDevice(0.015),
          child: SizedBox(
            width: witdthDevice(0.97),
            height: heightDevice(0.14),
            child: Card(
              child: new ListTile(
                minLeadingWidth: 10,
                leading: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: new Icon(Icons.search),
                ),
                title: new TextField(
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: new InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 5),
                      hintText: 'Search',
                      border: InputBorder.none),
                ),

                //     },
                //   ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

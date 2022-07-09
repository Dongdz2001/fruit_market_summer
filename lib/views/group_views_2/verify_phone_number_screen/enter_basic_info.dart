import 'package:flutter/material.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/home_main_screen.dart';

class EnterBasicInfo extends StatelessWidget {
  const EnterBasicInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text("Enter Your Name",
                    style: Theme.of(context).textTheme.headline3),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  // controller: _edtNumberController,
                  // keyboardType: TextInputType.none,
                  style: TextStyle(fontSize: 20),
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 25, right: 240),
                child: Text("Add Address",
                    style: Theme.of(context).textTheme.headline3),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: TextEditingController()..text = '\n\n\n\n\n',
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  textInputAction: TextInputAction.newline,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: new InputDecoration(
                    // contentPadding: EdgeInsets.only(left: 70, top: 21, bottom: 20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: SizedBox(
                  width: 335,
                  height: 52,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => HomeMainScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF69A03A),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                        ),
                      ),
                      child: Text(
                        "VERIFY",
                        style: Theme.of(context).textTheme.headline1,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

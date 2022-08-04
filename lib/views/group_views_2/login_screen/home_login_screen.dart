import 'package:flutter/material.dart';
import 'package:page_views/controller/gobal_variable_food/sizeDevice.dart';
import 'package:page_views/views/group_views_1/page_views/onboarding_screen.dart';
import 'package:page_views/views/group_views_2/verify_phone_number_screen/enter_basic_info.dart';
import 'package:page_views/views/group_views_2/verify_phone_number_screen/input_verifyle.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class HomeLoginScreen extends StatefulWidget {
  const HomeLoginScreen({Key? key}) : super(key: key);

  @override
  State<HomeLoginScreen> createState() => _HomeLoginScreenState();
}

class _HomeLoginScreenState extends State<HomeLoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool _isLoggedIn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _edt_number = TextEditingController();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: heightDevice(0.25),
                  width: witdthDevice(0.6),
                  child: Image.asset(
                    "assets/image_home/home_store.png",
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                height: heightDevice(0.01),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Color(0xFF69A03A),
                      fontFamily: "Poppins",
                      fontSize: 42,
                      fontWeight: FontWeight.bold),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'F',
                      style: TextStyle(fontSize: 50),
                    ),
                    TextSpan(text: 'ruit Market'),
                  ],
                ),
              ),
              SizedBox(
                height: heightDevice(0.05),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _edt_number,
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 31, 12, 237), width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 146, 137, 137),
                          width: 1.5),
                    ),
                    hintText: 'Enter Your Mobile Number',
                  ),
                  keyboardType: TextInputType.none,
                  onSubmitted: (value) async {
                    // _phoneAuth(value);
                    FirebaseAuth auth = FirebaseAuth.instance;

                    await auth.verifyPhoneNumber(
                      phoneNumber: "+1${value.toString()}",
                      verificationCompleted:
                          (PhoneAuthCredential credential) async {
                        // ANDROID ONLY!

                        // Sign the user in (or link) with the auto-generated credential
                        await auth.signInWithCredential(credential);
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {
                        print("okookkkkk succed");
                      },
                      verificationFailed: (FirebaseAuthException error) {
                        print("error : *********************\n\n $error");
                      },
                      codeSent:
                          (String verificationId, int? forceResendingToken) {
                        print("code is $verificationId");
                      },
                    );
                  },
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputVerifyle())),
                ),
              ),
              SizedBox(
                height: heightDevice(0.1),
              ),
              Center(
                  child: Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
              SizedBox(
                height: heightDevice(0.05),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            side: BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                            )),
                        child: SizedBox(
                          width: witdthDevice(0.34),
                          height: heightDevice(0.06),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset("assets/icons/google.png"),
                              ),
                              Text(
                                "Login In with",
                                style: Theme.of(context).textTheme.headline2,
                              )
                            ],
                          ),
                        ),
                        onPressed: () async => _veryfireGoogle()),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            side: BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                            )),
                        child: SizedBox(
                          width: witdthDevice(0.34),
                          height: heightDevice(0.06),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset("assets/icons/facebook.png"),
                              ),
                              Text(
                                "Login In with",
                                style: Theme.of(context).textTheme.headline2,
                              )
                            ],
                          ),
                        ),
                        onPressed: () async => _signInWithFacebook()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // method Sign Google
  Future<void> _veryfireGoogle() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
    await _googleSignIn.signIn();
    GoogleSignInAccount? user = _googleSignIn.currentUser;
    if (user != null) {
      setState(() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => EnterBasicInfo()));
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Email or Password incorrect !')));
    }
  }

  Future<void> _signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance
        .login(permissions: ['email', 'public_profile', 'user_birthday']);

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);
    UserCredential user = await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential) as UserCredential;
    if (user != null) {
      setState(() {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => EnterBasicInfo()));
      });
    }
  }
}

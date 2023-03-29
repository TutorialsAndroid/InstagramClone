import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:instagram/home_screen.dart';
import 'otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController _userNameTextField = TextEditingController();
  final TextEditingController _passWordTextField = TextEditingController();

  final String _endingPhoneNumber = "XXXX";

  // void _showLoadingDialog() {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false, // dialog is dismissible with a tap on the barrier
  //     builder: (BuildContext context) {
  //       return Dialog(
  //         child: Container(
  //           width: 10,
  //           padding: EdgeInsets.all(20),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               SizedBox(
  //                 width: 20,
  //                 height: 20,
  //                 child: CircularProgressIndicator(
  //                   color: Colors.black,
  //                 ),
  //               ),
  //               SizedBox(width: 16),
  //               Text("Loading..."),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
  //
  // void _hideLoadingDialog() {
  //   Navigator.of(context).pop();
  // }
  //
  // void _showPasswordErrorDialog() {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text("Incorrect password"),
  //         content: const Text("The password that you've entered is incorrect. Please try again."),
  //         actions: [
  //           TextButton(
  //             child: const Text("OK"),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  void dispose() {
    super.dispose();
    _userNameTextField.dispose();
    _passWordTextField.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Image.asset(
                        'res/icons/instagram_logo_text.png',
                        width: 200,
                      ),

                      const SizedBox(
                        height: 16,
                      ),

                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: TextField(
                          controller: _userNameTextField,
                          decoration: const InputDecoration(
                            hintText: 'Phone number, email or username',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 16,
                      ),

                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: TextField(
                          controller: _passWordTextField,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 8,
                      ),

                      MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(20),
                          color: Colors.blueAccent,
                          minWidth: 350,
                          onPressed: () {
                            String userName = _userNameTextField.text;
                            String password = _passWordTextField.text;

                            if(userName.isNotEmpty && password.isNotEmpty) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OTPScreen(endingPhoneNumber: _endingPhoneNumber) ),
                              );
                            } else {
                              Fluttertoast.showToast(
                                  msg: "All fields are mandatory...",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 5,
                                  webBgColor: "linear-gradient(to right, #ff0000, #ff0000)",
                                  textColor: Colors.white,
                                  fontSize: 15.0
                              );
                            }
                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(color: Colors.white),
                          )
                      ),

                      const SizedBox(
                        height: 8,
                      ),

                      RichText(
                        text: TextSpan(
                          text: 'Forgot your login details? ',
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Get help logging in.',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // do something when "clickable" is tapped
                                },
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 8,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: const [
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                height: 1.5,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'OR',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 16,
                      ),

                      TextButton.icon(
                          onPressed: () {
                            // Do something when the button is pressed
                          },
                          icon: const Icon(Icons.facebook, color: Colors.blue,), // Replace `Icons.add` with the desired icon
                          label: const Text(
                            'Log in with Facebook',
                            style: TextStyle( fontWeight: FontWeight.bold  ),
                          )
                      )

                    ],
                  ),
                ),
              ),
            )// This trailing comma makes auto-formatting nicer for build methods.
        )
    );
  }
}

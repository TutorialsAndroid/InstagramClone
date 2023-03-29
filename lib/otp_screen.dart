import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key, required this.endingPhoneNumber});

  final String endingPhoneNumber;

  @override
  State<OTPScreen> createState() => _OTPScreenPageState();
}

class _OTPScreenPageState extends State<OTPScreen> {

  final TextEditingController _securityCodeInputField = TextEditingController();

  @override
  void dispose() {
    _securityCodeInputField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height,
            child: SingleChildScrollView(
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 190,
                        ),

                        const SizedBox(
                          child: Icon(
                            size: 70,
                            Icons.lock_rounded,
                            color: Colors.blue,
                          )
                        ),

                        const SizedBox(
                          height: 6,
                        ),

                        SizedBox(
                          width: 320,
                          child: Text(
                              'Enter the code that we sent to your number ending in ${widget.endingPhoneNumber}',
                            textAlign: TextAlign.center,
                          ),
                        ),

                        const SizedBox(
                          height: 6,
                        ),

                        Container(
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[200],
                          ),
                          child: TextField(
                            controller: _securityCodeInputField,
                            decoration: const InputDecoration(
                              hintText: 'Security code',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 6,
                        ),

                        MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(20),
                            color: Colors.blueAccent,
                            minWidth: 350,
                            onPressed: () {
                              String getCode = _securityCodeInputField.text;

                              if(getCode.isNotEmpty) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const HomeScreen() ),
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
                              'Confirm',
                              style: TextStyle(color: Colors.white),
                            )
                        ),

                        const SizedBox(
                          height: 8,
                        ),

                        Center(

                            child: RichText(
                              text: TextSpan(
                                text: 'Haven\'t received a security code? We can ',
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'resend it',
                                    style: const TextStyle(
                                      color: Colors.blueAccent,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        // do something when "clickable" is tapped
                                      },
                                  ),
                                ],
                              ),
                            ),

                        )
                      ]
                  ),
                )
            )
        )
    );
  }
}
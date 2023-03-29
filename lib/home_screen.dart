import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: Image.asset('res/icons/home_icon.png'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: Image.asset('res/icons/search_icon.png'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: Image.asset('res/icons/add_post_icon.png'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: Image.asset('res/icons/reels_icon.png'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: Image.asset('res/images/akshay_image.png'),
                ),
                label: '',
              ),
            ],
            type: BottomNavigationBarType.fixed,
          ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 6,
                    ),

                    Image.asset(
                      'res/icons/instagram_logo_text.png',
                      width: 100,
                      height: 60,
                    ),

                    const SizedBox(
                      width: 1,
                    ),

                    const Icon(Icons.arrow_drop_down_sharp),

                    const Spacer(),
                    const Spacer(),

                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          children: [
                            Image.asset(
                              'res/icons/heart_icon.png',
                              width: 25,
                              height: 25,
                            ),

                            const SizedBox(
                              width: 15,
                            ),

                            Image.asset(
                              'res/icons/message_icon.png',
                              width: 25,
                              height: 25,
                            ),
                          ],
                        )
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 16, 1, 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                        Column(
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3.0,
                                  style: BorderStyle.solid,
                                  color: Colors.transparent,
                                ),
                                gradient: const LinearGradient(
                                  colors: [Colors.orange, Colors.pinkAccent],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('res/images/akshay_image.png'),
                              ),
                            ),

                            const SizedBox(
                              height: 4,
                            ),

                            const Text('Your story'),
                          ],
                        ),

                        const SizedBox(
                          width: 8,
                        ),

                        Column(
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3.0,
                                  style: BorderStyle.solid,
                                  color: Colors.transparent,
                                ),
                                gradient: const LinearGradient(
                                  colors: [Colors.orange, Colors.pinkAccent],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('res/images/image1.jpg'),
                              ),
                            ),

                            const SizedBox(
                              height: 4,
                            ),

                            const Text('dr.dadmalga...'),
                          ],
                        ),

                        const SizedBox(
                          width: 8,
                        ),

                        Column(
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3.0,
                                  style: BorderStyle.solid,
                                  color: Colors.transparent,
                                ),
                                gradient: const LinearGradient(
                                  colors: [Colors.orange, Colors.pinkAccent],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('res/images/image2.jpg'),
                              ),
                            ),

                            const SizedBox(
                              height: 4,
                            ),

                            const Text('_the_realtalk'),
                          ],
                        ),

                        const SizedBox(
                          width: 8,
                        ),

                        Column(
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3.0,
                                  style: BorderStyle.solid,
                                  color: Colors.transparent,
                                ),
                                gradient: const LinearGradient(
                                  colors: [Colors.orange, Colors.pinkAccent],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('res/images/image3.jpg'),
                              ),
                            ),

                            const SizedBox(
                              height: 4,
                            ),

                            const Text('amer.got.this'),
                          ],
                        ),

                        const SizedBox(
                          width: 8,
                        ),

                        Column(
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3.0,
                                  style: BorderStyle.solid,
                                  color: Colors.transparent,
                                ),
                                gradient: const LinearGradient(
                                  colors: [Colors.orange, Colors.pinkAccent],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('res/images/image4.jpg'),
                              ),
                            ),

                            const SizedBox(
                              height: 4,
                            ),

                            const Text('mishuuu__'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                //Post view start here...
                SizedBox(
                  height: 500, // Set a fixed height for the container
                  child: Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.fromLTRB(6, 0, 6, 8),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 35,
                                height: 35,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('res/images/arilaska_image.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'arilaska',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    'res/icons/menu_icon.png',
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Image.asset(
                          'res/images/arilaska_post.jpg',
                          fit: BoxFit.fitWidth,
                        ),

                        Padding(
                            padding: const EdgeInsets.fromLTRB(6, 10, 6, 8),
                            child: Row(
                              children: [
                                Image.asset(
                                  'res/icons/heart_icon.png',
                                  width: 20,
                                  height: 20,
                                ),

                                const SizedBox(
                                  width: 12,
                                ),

                                Image.asset(
                                  'res/icons/comment_icon.png',
                                  width: 20,
                                  height: 20,
                                ),

                                const SizedBox(
                                  width: 12,
                                ),

                                Image.asset(
                                  'res/icons/send_icon.png',
                                  width: 20,
                                  height: 20,
                                ),

                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      'res/icons/bookmark_icon.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                ),
              ],
            )
        )
    );
  }
}
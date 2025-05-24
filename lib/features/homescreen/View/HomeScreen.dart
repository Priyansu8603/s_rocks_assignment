import 'package:flutter/material.dart';
import 'package:s_rocks_assignment/Utils/AppColors.dart';

import '../../../Utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Determine if it's a small or large screen
    final isSmallPhoneScreen = screenWidth < 400 && screenHeight < 750;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.maroon,
                      AppColors.maroondark,
                    ]
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    // Search Bar
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Search bar with mic and vertical divider
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.search, color: Colors.white),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: TextField(
                                    cursorColor: Colors.white,
                                    style: TextStyle(color: Colors.white,fontFamily: 'Poppins'),
                                    decoration: InputDecoration(
                                      hintText: 'Search "Punjabi Lyrics"',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  width: 1,
                                  color: Colors.white38,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){Utils.showSnackBar(context, 'Mic Tapped !!', AppColors.maroon);},
                                    child: const Icon(Icons.mic, color: Colors.white,)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),

                        GestureDetector(
                          onTap: () {Utils.showSnackBar(context, 'Profile Tapped !!', AppColors.maroon);},
                          child: const CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Claim your',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Free Demo',
                            style: TextStyle(
                              fontFamily: 'Lobster',
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'for custom Music Production',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 16
                            ),
                          ),
                          const SizedBox(height: 18),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: AppColors.maroon,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {Utils.showSnackBar(context, 'Book Now Tapped !!', AppColors.maroon);},
                            child: const Text('Book Now',style: TextStyle(fontFamily: 'Poppins',color:Colors.black,fontWeight:FontWeight.w600),),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 80,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: -40,
                            bottom: 20,
                            child: Image.asset(
                              'core/Assets/images/record.png',
                              height: 120,
                            ),
                          ),
                          Positioned(
                            right: -30,
                            bottom: 20,
                            child: Image.asset(
                              'core/Assets/images/piano.png',
                              height: 120,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sneakers_etdn/components/landing_page.dart';
import 'package:sneakers_etdn/constants.dart';
import 'package:sneakers_etdn/components/shop_page.dart';

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: const LandingPage(),
    routes: {
      '/shop': (context) => ShopPage(),
    },
  );
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(
            begin: -45.77 * 3.1415926535 / 180,
            end: -47.77 * 3.1415926535 / 180)
        .animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 100)),
              SizedBox(
                width: 260,
                child: Column(
                  children: const [
                    Text(
                      "ETDN'S SHOES",
                      style: TextStyle(fontFamily: 'Thunder', fontSize: 96),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: _startAnimation,
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (BuildContext context, Widget? child) {
                    return Transform.rotate(
                      angle: _animation.value,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 243.75,
                          height: 204.39,
                          child: Image(
                            image: AssetImage('assets/images/nike_stussy.png'),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 70),
                child: SizedBox(height: 20),
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the shop page when the button is pressed
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ShopPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            "Enter shop",
                            style:
                                TextStyle(fontFamily: 'Thunder', fontSize: 25),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}

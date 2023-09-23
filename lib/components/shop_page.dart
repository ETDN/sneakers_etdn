import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  void _acheterMaintenant() {
    // Laisser la méthode vide pour l'instant
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                width: 334,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFEFEFEF),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5))],
                ),
                child: Stack(
                  children: [
                    const Positioned.fill(
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Jordan Dior',
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'ThunderSemi',
                                fontWeight: FontWeight.w200,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const Positioned.fill(
                      child: Padding(
                        padding: EdgeInsets.only(top: 60, left: 30),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Very rare',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ThunderSemi',
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, top: 20, bottom: 10),
                          child: ElevatedButton(
                            onPressed: _acheterMaintenant,
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size.fromHeight(10),
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        22))), // Appel à la méthode
                            child: const Text(
                              'Shop now',
                              style: TextStyle(
                                  fontFamily: 'ThunderSemi', fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -20, // Ajustez la position verticale de l'image
                      right: -20, // Ajustez la position horizontale de l'image
                      child: Transform.rotate(
                        angle: 300 * (3.1415926535 / 180), // Angle en radians
                        child: Image.asset(
                          'assets/images/jordan_dior.png',
                          fit: BoxFit.contain, // Chemin vers l'image
                          width: 150, // Ajustez la largeur de l'image
                          height: 150, // Ajustez la hauteur de l'image
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Logique de filtrage pour l'option "All"
                        // Mettez à jour la liste de chaussures affichées
                      },
                      child: Text('All',
                          style: TextStyle(
                              fontFamily: 'ThunderSemi',
                              fontSize: 18,
                              color: Colors.black)),
                    ),
                    TextButton(
                      onPressed: () {
                        // Logique de filtrage pour l'option "Running"
                        // Mettez à jour la liste de chaussures affichées
                      },
                      child: Text('Running',
                          style: TextStyle(
                              fontFamily: 'ThunderSemi',
                              fontSize: 18,
                              color: Color(0xFF9C9C9C))),
                    ),
                    TextButton(
                      onPressed: () {
                        // Logique de filtrage pour l'option "Sneaker"
                        // Mettez à jour la liste de chaussures affichées
                      },
                      child: Text('Sneaker',
                          style: TextStyle(
                              fontFamily: 'ThunderSemi',
                              fontSize: 18,
                              color: Color(0xFF9C9C9C))),
                    ),
                    TextButton(
                      onPressed: () {
                        // Logique de filtrage pour l'option "Formal"
                        // Mettez à jour la liste de chaussures affichées
                      },
                      child: Text('Formal',
                          style: TextStyle(
                              fontFamily: 'ThunderSemi',
                              fontSize: 18,
                              color: Color(0xFF9C9C9C))),
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

import 'package:flutter/material.dart';
import 'package:swiftcafe/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Present background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundimage.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Small background image overlay
          Center(
            child: Stack(
              children: [
                Container(
                  width: 300, // Adjust as needed
                  height: 700, // Adjust as needed
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/smallbg.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    boxShadow: [
                      BoxShadow(
                
                        color: Colors.black.withOpacity(0.5), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 3, // Blur radius
                        offset: const Offset(0, 5), // Offset
                      ),
                    ],
                  ),
                ),

                // Logo in the top center
                Positioned(
                  top: 20, // Adjust as needed
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 100, // Adjust as needed
                    height: 100, // Adjust as needed
                  ),
                ),
                // Image just below the logo
                Positioned(
                  top: 130, // Adjust as needed
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Swift Café.png',
                        width: 150, // Adjust as needed
                        height: 150, // Adjust as needed
                      ),
                      const SizedBox(height: 5), // Adjust as needed
                      const Text(
                        '"Latte but never late"',
                        style: TextStyle(
                          fontSize: 10, // Adjust as needed
                          color: Colors.white, // Adjust as needed
                        ),
                      ),
                      const SizedBox(height: 10), // Adjust as needed
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: TextStyle(color: Colors.white),
                            border: const UnderlineInputBorder(),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 10), // Adjust as needed
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white),
                            border: const UnderlineInputBorder(),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(134, 53, 41, 6),
                          // Background color
                          minimumSize: const Size(245, 49), // Button size
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(33),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40), // Adjust as needed
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Signup",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          // Transparent background color
                          minimumSize: const Size(245, 49), // Button size
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(33),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Privacy Policy",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

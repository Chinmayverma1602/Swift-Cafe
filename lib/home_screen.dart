import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swiftcafe/latte.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Background image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/backgroundimage.jpeg'), // Replace 'backgroundimage.jpeg' with your image path
                  fit: BoxFit.cover, // Cover the whole screen
                ),
              ),
            ),
            // Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Add some space at the top
                  SizedBox(height: 80),
                  // Add TextField with decoration
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search favorite beverage',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.filter_list),
                        onPressed: () {
                          // Add your filter functionality here
                        },
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Most Popular Beverages",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(height: 20),
                  // Container wrapping Column
                  Column(
                    children: [
                      // ListView.builder
                      Container(
                        height: 280, // Adjust the height of all items
                        padding: EdgeInsets.only(bottom: 20),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            // You can customize the item widget as needed
                            return Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 200,
                              // Adjust the width as needed
                              decoration: BoxDecoration(
                                color: Color.fromARGB(64, 237, 230, 230),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/capachino.png', // Replace 'your_image.jpg' with your image path
                                    height: 150,
                                    // width: 150,
                                    // Adjust the height of the image
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Hot Cappuccino",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  //  SizedBox(height: 1),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: Text(
                                      "Expresso Steamed Milk",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                "4.9",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Color.fromARGB(
                                                    255, 225, 193, 55),
                                              ),
                                              SizedBox(
                                                  width:
                                                      5), // Adjust spacing between star and text
                                              Text(
                                                "(456)",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                  width:
                                                      5), // Adjust spacing between text and icon
                                              Icon(
                                                Icons.eco,
                                                color: Colors.green,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 36, // Adjusted width
                                          height: 36, // Adjusted height
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                143, 15, 222, 29),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: IconButton(
                                            icon: Icon(Icons.add),
                                            color: Colors.white,
                                            onPressed: () {
                                              // Add to cart functionality
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      // Text "Get it instantly"
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Get it instantly",
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      // ListView.builder
                      Container(
                        height: 200,
                        padding: EdgeInsets.only(bottom: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 30),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(64, 237, 230, 230),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Latte',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ),
                                                SizedBox(
                                                    width:
                                                        5), // Adjust spacing between text and icon
                                                Icon(
                                                  Icons.eco,
                                                  color: Colors.green,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 2),
                                            Row(
                                              children: [
                                                Text(
                                                  "4.9",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Color.fromARGB(
                                                      255, 225, 193, 55),
                                                ),
                                                SizedBox(
                                                    width:
                                                        5), // Adjust spacing between star and text
                                                Text(
                                                  "(456)",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Caffè latte is a milk coffee that is made up of one or two shots of espresso, steamed milk, and a final, thin layer of frothed milk on top.",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/capachino.png',
                                              height: 100,
                                              width: 100,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(height: 1),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          LattePage(), // Replace NewPage() with your new page widget
                                                    ));
                                              },
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  foregroundColor: Colors.white,
                                                  backgroundColor: Colors.green,
                                                ),
                                                onPressed: () {
                                                  // Add to cart functionality
                                                },
                                                child: Text(
                                                  'Add',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      // ListView.builder below "Get it instantly"
                    ],
                  ),
                ],
              ),
            ),
            // Footer SVG
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                'assets/images/Menu bar.svg', // Replace 'footer.svg' with your SVG file path
                width: MediaQuery.of(context).size.width,
                height: 80,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

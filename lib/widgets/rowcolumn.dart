import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Poppins-Regular"),
    debugShowCheckedModeBanner: false,
    home: const MyColumnRowWidgets(),
  ));
}

class MyColumnRowWidgets extends StatelessWidget {
  const MyColumnRowWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(
          "Asus Official Store",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // Heading title subtitle //
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    "ASUS GEN BOOK 5",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Colors.black),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                  child: Text(
                    "Type: Pro 17 W700",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),

                // Laptop view //
                const Padding(
                  padding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                  child: Image(image: AssetImage('images/laptop.png')),
                ),

                // gray section //
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 224, 223, 223),
                        border: Border.all(
                          color: const Color.fromARGB(255, 224, 223, 223),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2, // Weight of section 1
                          child: Container(
                            height: 100,
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                    image: AssetImage('images/brandlogo.png')),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4, // Weight of section 2
                          child: Container(
                            height: 100,
                            child: const SizedBox(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Asus Official Store",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                  Text("View Store",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.grey))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1, // Weight of section 3
                          child: Container(
                            height: 100,
                            child: const Center(
                              child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      Text(
                        "Specification",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey),
                      ),
                      Text(
                        "Review",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Text(
                    'In order to test each laptop, we have conducted industry-standard benchmarks to determine performance and professional-grade equipment to evaluate the screen. We also measure battery life, judge design quality and even check for any cutting-edge features.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Price",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                  color: Colors.grey)),
                          Text(
                            "\$560",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 55.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Moneypage extends StatelessWidget {
  const Moneypage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = ["Accounts", "Cards", "Stocks", "Value"];
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              "https://static.vecteezy.com/system/resources/thumbnails/002/318/271/small/user-profile-icon-free-vector.jpg")),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "Devon Lane",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "@devonlane",
                            style: TextStyle(color: Colors.white60),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Icon(
                        Icons.timelapse_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.notification_important_sharp,
                        size: 35,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 35,
                            color: Colors.white30,
                          ),
                          hintText: "Search",
                          hintStyle:
                              const TextStyle(fontSize: 18, color: Colors.white30)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                            margin: const EdgeInsets.all(4),
                            width: 100,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                items[index],
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 203, 237, 6),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Total Balance",
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              const Text(
                                "\$87,84.300",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                  height: 35,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: const Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "USDT",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                      backgroundColor:
                                          Colors.white.withOpacity(0.6),
                                      child: const Icon(
                                        Icons.send,
                                        color: Colors.black,
                                        size: 28,
                                      )),
                                  const Text("Send")
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                      backgroundColor:
                                          Colors.white.withOpacity(0.6),
                                      child: const Icon(
                                        Icons.call_received_sharp,
                                        color: Colors.black,
                                        size: 28,
                                      )),
                                  const Text("Received")
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Colors.white.withOpacity(0.6),
                                    child: const Icon(
                                      Icons.payment,
                                      color: Colors.black,
                                      size: 28,
                                    ),
                                  ),
                                  const Text("Billing")
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Colors.white.withOpacity(0.6),
                                    child: const Icon(
                                      Icons.card_travel_sharp,
                                      color: Colors.black,
                                      size: 28,
                                    ),
                                  ),
                                  const Text("Card")
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDyxU0K2Jex5or5LSATjWaNB8oSA6XPsWRRg&s",
                              height: 80,
                              width: 40,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Confirm your email address",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Verify your email to keep your \n account extra secure",
                                  style: TextStyle(color: Colors.white60),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 45,
                                  width: 270,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 203, 237, 6),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                      child: Text(
                                    "Verify email",
                                    style: TextStyle(color: Colors.black),
                                  )),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  selectedItemColor: const Color.fromARGB(255, 203, 237, 6),
                  unselectedItemColor: Colors.white,
                  backgroundColor: Colors.white.withOpacity(0.1),
                  type: BottomNavigationBarType.fixed,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.loop),
                      label: "Return",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle_outlined),
                        label: "Account"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.apps), label: "More")
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

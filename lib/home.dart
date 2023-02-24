import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/about_me.dart';
import 'package:my_portfolio/projects.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  myAchieve(number, type) {
    return Row(
      children: [
        Text(number,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Soho")),
        const SizedBox(
          width: 4,
        ),
        Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(type,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontFamily: "Soho"))),
      ],
    );
  }

  mySpecailized(icon, tech) {
    return SizedBox(
      width: 105,
      height: 115,
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            Text(tech,
                style:
                    const TextStyle(color: Colors.white, fontFamily: "Soho")),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          position: PopupMenuPosition.under,
          color: Colors.white,
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          icon: const Icon(Icons.menu_rounded),
          itemBuilder: (context) => [
            PopupMenuItem(
                child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const Projects();
                  },
                ));
              },
              child: const Text("Projects",
                  style: TextStyle(color: Colors.black, fontFamily: "Soho")),
            )),
            PopupMenuItem(
                child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const AboutMe();
                  },
                ));
              },
              child: const Text("About Me!",
                  style: TextStyle(color: Colors.black, fontFamily: "Soho")),
            )),
          ],
        ),
        elevation: 8,
        // title: const Text("MyPortfolio", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),textAlign: TextAlign.start),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.black,
        child: SlidingSheet(
          elevation: 8,
          cornerRadius: 50,
          snapSpec: const SnapSpec(
            // Enable snapping. This is true by default.
            snap: true,
            // Set custom snapping points.
            snappings: [0.38, 0.7, 1.0],
            // Define to what the snappings relate to. In this case,
            // the total available space that the sheet can expand to.
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          color: Colors.white,
          // The body widget will be displayed under the SlidingSheet
          // and a parallax effect can be applied to it.
          body: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 35),
                child: Image.network(
                  "https://lh3.googleusercontent.com/jqTFxd0DtH6JeCDaPSoRfPEiuCjfUuvLMPtKml4W_ZoWM9nzuuUEfbJwRI226PgRMPeOaUfVx8t70S7Ar07Jp8GPSe-6DX1GaGBA01D-j_hpKUME-3Pn1YU3MnUxPRX10qSEjGXbV59wdjN9Wtdh77vI6UoAo-poRXh4568wl2g8pT46tSkLFtjIZ_BapUFp_pfbQfRgsJLjAxGkVynE_P54ITkVKXRTTHLR7UYxZUjgVKEG7-gqeFXan2R8gbGWNMDLFqhdTuVF5jY4SdDNX3OoHttdaX_jC4zHfHo6Q5etFWpt_MxPiN7eZoYE-KtcxOI0gNGFRiMvgYZZvLr7_LCRTaJzsfAnQjlI84I5fP8IZyudye9bIe9lUvP6aWuMOkgE5DJBQmmKnqFBzsXJs4oJ4CymUOozKHpjqaGwcejqrQUgNobhDOoZexn7ueQU-ZK7oHGmWAcuRXEJWwx7j5Hs73PUTL9k0AfW9zjPOcuOCWINoTQcxzJkExWGKcGUYoHvUPGkR7LB1-d_EWuiQSkOgXonsLGNW73pmLNh62O_KFQOj7tp6aRV7ReO50xGWmXUTHD-Y-dkeHJaA34Knz7Snj-wePgykMxTRPQEFr-Bhyj0w2AH3YCUIcjmDQ-sJbV6Kz0mncxuPi-lFpmfUB1WIe4Pleap1vTWjRWwr4hMQxmvZ62PuSKgTwQViitcz7V08vxmddL83CE-2k4UFBNbI8018a2XVsiaWmOf5XoJoh6vHyD5bESDv5YREDjJPw4LSYLFBdVxnjijpt4Tat8OP4Nk9-WiKb8PXwxcS1wyOI3PxZZwLtzIOqNuQwcrWn2ryQUbLTrgn4LZ4JGy4dG_OliGxvap0tQNJvznC_NkHalnMHwtt7AO1Q4iX79VMyMltetShjitX00s3_IxFoBPBCPZ3cjClwNF63qUVqNr8DoYcd6GtCP38FDRQoKlEQRTEmhw88gq5uAOP_OOeZenptDRTjzc1PHN5e1dGaWMozZiZP7U_1ss=s625-no?authuser=0",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('BHARGAV KACHHELA',
                        style: TextStyle(
                            fontFamily: "Soho",
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'SOFTWARE DEVELOPER',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Soho",
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
          builder: (context, state) {
            return Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myAchieve("2", "Projects"),
                      myAchieve("9", "MySkils"),
                      myAchieve("20", "Views"),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Expertise On:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontFamily: "Soho"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: size.height / 1.6,
                                      width: size.width,
                                      color: Colors.transparent,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Positioned(
                                            top: 14,
                                            bottom: 0,
                                            child: Container(
                                              width: size.width,
                                              height: size.height / 1.9,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                                borderRadius:
                                                BorderRadius.circular(60),
                                              ),
                                            ),
                                          ),

                                          Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.only(
                                                bottom: 440),
                                            child: const CircleAvatar(
                                              radius: 55,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                  color: Colors.black,
                                                  FontAwesomeIcons.android,
                                                  size: 35),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                  left: 2, bottom: 310),
                                              color: Colors.transparent,
                                              child: const Text(
                                                "Android",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25),
                                              )),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 30,
                                                left: 20,
                                                right: 20),
                                            child: FutureBuilder<http.Response>(
                                              future: getWebFromServer(),
                                              builder: (context, snapshot) {
                                                return ListView.builder(
                                                    itemCount: 1,
                                                    itemBuilder:
                                                        (context, index) {
                                                      if (snapshot.hasData) {
                                                        return Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 150),
                                                          child: Center(
                                                            child: Text(
                                                              (jsonDecode(snapshot
                                                                          .data!
                                                                          .body
                                                                          .toString())[0]
                                                                      [
                                                                      'Description']
                                                                  .toString()),
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 20),
                                                            ),
                                                          ),
                                                        );
                                                      } else {
                                                        return Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 230),
                                                          child: Column(
                                                            children: const [
                                                              Center(
                                                                  child:
                                                                      CircularProgressIndicator()),
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                              Text(
                                                                "Loading...",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        15),
                                                              )
                                                            ],
                                                          ),
                                                        );
                                                      }
                                                    });
                                              },
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            margin: const EdgeInsets.only(
                                                top: 50, left: 5, right: 23),
                                            color: Colors.transparent,
                                            child: IconButton(
                                                onPressed: () {
                                                 Navigator.pop(context,"home");
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                ),
                                                iconSize: 25),
                                          ),
                                          Container(
                                            margin:
                                            const EdgeInsets.only(top: 400),
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                        builder: (context) {
                                                          return const Projects();
                                                        },
                                                      ));
                                                },
                                                style: TextButton.styleFrom(
                                                  foregroundColor: Colors.black,
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                                ),
                                                child: const Text(
                                                    "View Projects !")),
                                          ),

                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: mySpecailized(
                                FontAwesomeIcons.android, "Android"),
                          ), //android
                          TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: size.height / 1.6,
                                      width: size.width,
                                      color: Colors.transparent,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Positioned(
                                            top: 14,
                                            bottom: 0,
                                            child: Container(
                                              width: size.width,
                                              height: size.height / 1.9,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                                borderRadius:
                                                    BorderRadius.circular(60),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.only(
                                                bottom: 440),
                                            child: const CircleAvatar(
                                              radius: 55,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                  color: Colors.black,
                                                  FontAwesomeIcons.python,
                                                  size: 35),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                  left: 2, bottom: 310),
                                              color: Colors.transparent,
                                              child: const Text(
                                                "Python",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25),
                                              )),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 30,
                                                left: 20,
                                                right: 20),
                                            child: FutureBuilder<http.Response>(
                                              future: getWebFromServer(),
                                              builder: (context, snapshot) {
                                                return ListView.builder(
                                                    itemCount: 1,
                                                    itemBuilder:
                                                        (context, index) {
                                                      if (snapshot.hasData) {
                                                        return Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 150),
                                                          child: Center(
                                                            child: Text(
                                                              (jsonDecode(snapshot
                                                                          .data!
                                                                          .body
                                                                          .toString())[1]
                                                                      [
                                                                      'Description']
                                                                  .toString()),
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 20),
                                                            ),
                                                          ),
                                                        );
                                                      } else {
                                                        return Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 230),
                                                          child: Column(
                                                            children: const [
                                                              Center(
                                                                  child:
                                                                      CircularProgressIndicator()),
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                              Text(
                                                                "Loading...",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        15),
                                                              )
                                                            ],
                                                          ),
                                                        );
                                                      }
                                                    });
                                              },
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            margin: const EdgeInsets.only(
                                                top: 50, left: 5, right: 23),
                                            color: Colors.transparent,
                                            child: IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context, true);
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                ),
                                                iconSize: 25),
                                          ),
                                          Container(
                                            margin:
                                            const EdgeInsets.only(top: 400),
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                        builder: (context) {
                                                          return const Projects();
                                                        },
                                                      ));
                                                },
                                                style: TextButton.styleFrom(
                                                  foregroundColor: Colors.black,
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                                ),
                                                child: const Text(
                                                    "View Projects !")),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: mySpecailized(
                                FontAwesomeIcons.python, "Python"),
                          ), // python
                          TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: size.height / 1.6,
                                      width: size.width,
                                      color: Colors.transparent,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Positioned(
                                            top: 14,
                                            bottom: 0,
                                            child: Container(
                                              width: size.width,
                                              height: size.height / 1.9,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                                borderRadius:
                                                    BorderRadius.circular(60),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.only(
                                                bottom: 440),
                                            child: const CircleAvatar(
                                              radius: 55,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                  color: Colors.black,
                                                  FontAwesomeIcons.js,
                                                  size: 35),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                  left: 2, bottom: 310),
                                              color: Colors.transparent,
                                              child: const Text(
                                                "JavaScript",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25),
                                              )),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 30,
                                                left: 20,
                                                right: 20),
                                            child: FutureBuilder<http.Response>(
                                              future: getWebFromServer(),
                                              builder: (context, snapshot) {
                                                return ListView.builder(
                                                    itemCount: 1,
                                                    itemBuilder:
                                                        (context, index) {
                                                      if (snapshot.hasData) {
                                                        return Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 150),
                                                          child: Center(
                                                            child: Text(
                                                              (jsonDecode(snapshot
                                                                          .data!
                                                                          .body
                                                                          .toString())[2]
                                                                      [
                                                                      'Description']
                                                                  .toString()),
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 20),
                                                            ),
                                                          ),
                                                        );
                                                      } else {
                                                        return Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 230),
                                                          child: Column(
                                                            children: const [
                                                              Center(
                                                                  child:
                                                                      CircularProgressIndicator()),
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                              Text(
                                                                "Loading...",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        15),
                                                              )
                                                            ],
                                                          ),
                                                        );
                                                      }
                                                    });
                                              },
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.topRight,
                                            margin: const EdgeInsets.only(
                                                top: 50, left: 5, right: 23),
                                            color: Colors.transparent,
                                            child: IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context, true);
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                ),
                                                iconSize: 25),
                                          ),
                                          Container(
                                            margin:
                                            const EdgeInsets.only(top: 400),
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                        builder: (context) {
                                                          return const Projects();
                                                        },
                                                      ));
                                                },
                                                style: TextButton.styleFrom(
                                                  foregroundColor: Colors.black,
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                                ),
                                                child: const Text(
                                                    "View Projects !")),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: mySpecailized(
                                FontAwesomeIcons.js, "JavaScript"),
                          ), //javascript
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: size.height / 1.6,
                                          width: size.width,
                                          color: Colors.transparent,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Positioned(
                                                top: 14,
                                                bottom: 0,
                                                child: Container(
                                                  width: size.width,
                                                  height: size.height / 1.9,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                margin: const EdgeInsets.only(
                                                    bottom: 440),
                                                child: const CircleAvatar(
                                                  radius: 55,
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                      color: Colors.black,
                                                      FontAwesomeIcons.nodeJs,
                                                      size: 35),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 2, bottom: 310),
                                                  color: Colors.transparent,
                                                  child: const Text(
                                                    "NodeJs",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 25),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 30,
                                                    left: 20,
                                                    right: 20),
                                                child: FutureBuilder<
                                                    http.Response>(
                                                  future: getWebFromServer(),
                                                  builder: (context, snapshot) {
                                                    return ListView.builder(
                                                        itemCount: 1,
                                                        itemBuilder:
                                                            (context, index) {
                                                          if (snapshot
                                                              .hasData) {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 150),
                                                              child: Center(
                                                                child: Text(
                                                                  (jsonDecode(snapshot
                                                                          .data!
                                                                          .body
                                                                          .toString())[3]['Description']
                                                                      .toString()),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ),
                                                            );
                                                          } else {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 230),
                                                              child: Column(
                                                                children: const [
                                                                  Center(
                                                                      child:
                                                                          CircularProgressIndicator()),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                    "Loading...",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            15),
                                                                  )
                                                                ],
                                                              ),
                                                            );
                                                          }
                                                        });
                                                  },
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50,
                                                    left: 5,
                                                    right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(
                                                          context, true);
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 400),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return const Projects();
                                                            },
                                                          ));
                                                    },
                                                    style: TextButton.styleFrom(
                                                      foregroundColor:
                                                      Colors.black,
                                                      backgroundColor:
                                                      Colors.white,
                                                      shape:
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              16)),
                                                    ),
                                                    child: const Text(
                                                        "View Projects !")),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: mySpecailized(
                                    FontAwesomeIcons.nodeJs, "NodeJs"),
                              ), //nodejs
                              TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: size.height / 1.6,
                                          width: size.width,
                                          color: Colors.transparent,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Positioned(
                                                top: 14,
                                                bottom: 0,
                                                child: Container(
                                                  width: size.width,
                                                  height: size.height / 1.9,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                margin: const EdgeInsets.only(
                                                    bottom: 440),
                                                child: const CircleAvatar(
                                                  radius: 55,
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                      color: Colors.black,
                                                      FontAwesomeIcons.react,
                                                      size: 35),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 2, bottom: 310),
                                                  color: Colors.transparent,
                                                  child: const Text(
                                                    "ReactJs",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 25),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 30,
                                                    left: 20,
                                                    right: 20),
                                                child: FutureBuilder<
                                                    http.Response>(
                                                  future: getWebFromServer(),
                                                  builder: (context, snapshot) {
                                                    return ListView.builder(
                                                        itemCount: 1,
                                                        itemBuilder:
                                                            (context, index) {
                                                          if (snapshot
                                                              .hasData) {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 150),
                                                              child: Center(
                                                                child: Text(
                                                                  (jsonDecode(snapshot
                                                                          .data!
                                                                          .body
                                                                          .toString())[4]['Description']
                                                                      .toString()),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ),
                                                            );
                                                          } else {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 230),
                                                              child: Column(
                                                                children: const [
                                                                  Center(
                                                                      child:
                                                                          CircularProgressIndicator()),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                    "Loading...",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            15),
                                                                  )
                                                                ],
                                                              ),
                                                            );
                                                          }
                                                        });
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 400),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return const Projects();
                                                        },
                                                      ));
                                                    },
                                                    style: TextButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16)),
                                                    ),
                                                    child: const Text(
                                                        "View Projects !")),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50, left: 5, right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(context, true);
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: mySpecailized(
                                    FontAwesomeIcons.react, "ReactJs"),
                              ), //reactjs
                              TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: size.height / 1.6,
                                          width: size.width,
                                          color: Colors.transparent,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Positioned(
                                                top: 14,
                                                bottom: 0,
                                                child: Container(
                                                  width: size.width,
                                                  height: size.height / 1.9,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                margin: const EdgeInsets.only(
                                                    bottom: 440),
                                                child: const CircleAvatar(
                                                  radius: 55,
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                      color: Colors.black,
                                                      FontAwesomeIcons.angular,
                                                      size: 35),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 2, bottom: 310),
                                                  color: Colors.transparent,
                                                  child: const Text(
                                                    "Angular",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 25),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 30,
                                                    left: 20,
                                                    right: 20),
                                                child: FutureBuilder<
                                                    http.Response>(
                                                  future: getWebFromServer(),
                                                  builder: (context, snapshot) {
                                                    return ListView.builder(
                                                        itemCount: 1,
                                                        itemBuilder:
                                                            (context, index) {
                                                          if (snapshot
                                                              .hasData) {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 150),
                                                              child: Center(
                                                                child: Text(
                                                                  (jsonDecode(snapshot
                                                                          .data!
                                                                          .body
                                                                          .toString())[5]['Description']
                                                                      .toString()),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ),
                                                            );
                                                          } else {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 230),
                                                              child: Column(
                                                                children: const [
                                                                  Center(
                                                                      child:
                                                                          CircularProgressIndicator()),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                    "Loading...",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            15),
                                                                  )
                                                                ],
                                                              ),
                                                            );
                                                          }
                                                        });
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 400),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return const Projects();
                                                        },
                                                      ));
                                                    },
                                                    style: TextButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16)),
                                                    ),
                                                    child: const Text(
                                                        "View Projects !")),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50, left: 5, right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(context, true);
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: mySpecailized(
                                    FontAwesomeIcons.angular, "Angular"),
                              ), //angular
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: size.height / 1.6,
                                          width: size.width,
                                          color: Colors.transparent,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Positioned(
                                                top: 14,
                                                bottom: 0,
                                                child: Container(
                                                  width: size.width,
                                                  height: size.height / 1.9,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                margin: const EdgeInsets.only(
                                                    bottom: 440),
                                                child: const CircleAvatar(
                                                  radius: 55,
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                      color: Colors.black,
                                                      FontAwesomeIcons.java,
                                                      size: 35),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 2, bottom: 310),
                                                  color: Colors.transparent,
                                                  child: const Text(
                                                    "Java",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 25),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 30,
                                                    left: 20,
                                                    right: 20),
                                                child: FutureBuilder<
                                                    http.Response>(
                                                  future: getWebFromServer(),
                                                  builder: (context, snapshot) {
                                                    return ListView.builder(
                                                        itemCount: 1,
                                                        itemBuilder:
                                                            (context, index) {
                                                          if (snapshot
                                                              .hasData) {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 150),
                                                              child: Center(
                                                                child: Text(
                                                                  (jsonDecode(snapshot
                                                                          .data!
                                                                          .body
                                                                          .toString())[6]['Description']
                                                                      .toString()),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ),
                                                            );
                                                          } else {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 230),
                                                              child: Column(
                                                                children: const [
                                                                  Center(
                                                                      child:
                                                                          CircularProgressIndicator()),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                    "Loading...",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            15),
                                                                  )
                                                                ],
                                                              ),
                                                            );
                                                          }
                                                        });
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 400),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return const Projects();
                                                        },
                                                      ));
                                                    },
                                                    style: TextButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16)),
                                                    ),
                                                    child: const Text(
                                                        "View Projects !")),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50, left: 5, right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(context, true);
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: mySpecailized(
                                    FontAwesomeIcons.java, "Java"),
                              ), //java
                              TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: size.height / 1.6,
                                          width: size.width,
                                          color: Colors.transparent,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Positioned(
                                                top: 14,
                                                bottom: 0,
                                                child: Container(
                                                  width: size.width,
                                                  height: size.height / 1.9,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                margin: const EdgeInsets.only(
                                                    bottom: 440),
                                                child: const CircleAvatar(
                                                  radius: 55,
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                      color: Colors.black,
                                                      FontAwesomeIcons.c,
                                                      size: 35),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 2, bottom: 310),
                                                  color: Colors.transparent,
                                                  child: const Text(
                                                    "C/C++",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 25),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 30,
                                                    left: 20,
                                                    right: 20),
                                                child: FutureBuilder<
                                                    http.Response>(
                                                  future: getWebFromServer(),
                                                  builder: (context, snapshot) {
                                                    return ListView.builder(
                                                        itemCount: 1,
                                                        itemBuilder:
                                                            (context, index) {
                                                          if (snapshot
                                                              .hasData) {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 150),
                                                              child: Center(
                                                                child: Text(
                                                                  (jsonDecode(snapshot
                                                                          .data!
                                                                          .body
                                                                          .toString())[7]['Description']
                                                                      .toString()),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ),
                                                            );
                                                          } else {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 230),
                                                              child: Column(
                                                                children: const [
                                                                  Center(
                                                                      child:
                                                                          CircularProgressIndicator()),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                    "Loading...",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            15),
                                                                  )
                                                                ],
                                                              ),
                                                            );
                                                          }
                                                        });
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 400),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return const Projects();
                                                        },
                                                      ));
                                                    },
                                                    style: TextButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16)),
                                                    ),
                                                    child: const Text(
                                                        "View Projects !")),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50, left: 5, right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(context, true);
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child:
                                    mySpecailized(FontAwesomeIcons.c, "C/C++"),
                              ), //c/c++
                              TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: size.height / 1.6,
                                          width: size.width,
                                          color: Colors.transparent,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Positioned(
                                                top: 14,
                                                bottom: 0,
                                                child: Container(
                                                  width: size.width,
                                                  height: size.height / 1.9,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                margin: const EdgeInsets.only(
                                                    bottom: 440),
                                                child: const CircleAvatar(
                                                  radius: 55,
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                      color: Colors.black,
                                                      FontAwesomeIcons.swift,
                                                      size: 35),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 2, bottom: 310),
                                                  color: Colors.transparent,
                                                  child: const Text(
                                                    "Swift",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 25),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 30,
                                                    left: 20,
                                                    right: 20),
                                                child: FutureBuilder<
                                                    http.Response>(
                                                  future: getWebFromServer(),
                                                  builder: (context, snapshot) {
                                                    return ListView.builder(
                                                        itemCount: 1,
                                                        itemBuilder:
                                                            (context, index) {
                                                          if (snapshot
                                                              .hasData) {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 150),
                                                              child: Center(
                                                                child: Text(
                                                                  (jsonDecode(snapshot
                                                                          .data!
                                                                          .body
                                                                          .toString())[8]['Description']
                                                                      .toString()),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ),
                                                            );
                                                          } else {
                                                            return Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 230),
                                                              child: Column(
                                                                children: const [
                                                                  Center(
                                                                      child:
                                                                          CircularProgressIndicator()),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                    "Loading...",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            15),
                                                                  )
                                                                ],
                                                              ),
                                                            );
                                                          }
                                                        });
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 400),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return const Projects();
                                                        },
                                                      ));
                                                    },
                                                    style: TextButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16)),
                                                    ),
                                                    child: const Text(
                                                        "View Projects !")),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50, left: 5, right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(context, true);
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: mySpecailized(
                                    FontAwesomeIcons.swift, "Swift"),
                              ), //swift
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<http.Response> getWebFromServer() async {
    var response = await http.get(
        Uri.parse("https://63f7341fe40e087c9589714b.mockapi.io/My_Portfolio"));
    return response;
  }
}

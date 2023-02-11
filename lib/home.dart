import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/about_me.dart';
import 'package:my_portfolio/projects.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

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
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,fontFamily: "Soho")),
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
            Text(tech, style: const TextStyle(color: Colors.white,fontFamily: "Soho")),
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
              child:
                  const Text("Projects", style: TextStyle(color: Colors.black,fontFamily: "Soho")),
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
                  style: TextStyle(color: Colors.black,fontFamily: "Soho")),
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
                child: Image.asset(
                  "assets/images/1.jpg",
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
            // This is the content of the sheet that will get
            // scrolled, if the content is bigger than the available
            // height of the sheet.
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
                                            alignment: Alignment.topRight,
                                            margin: const EdgeInsets.only(
                                                top: 50, left: 5, right: 23),
                                            color: Colors.transparent,
                                            child: IconButton(
                                                onPressed: () {
                                                  Navigator.pop(
                                                      context, "home");
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                ),
                                                iconSize: 25),
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
                                                  bottom: 220,
                                                  right: 300,
                                                  left: 15),
                                              child: const Text(
                                                "Introduction:",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                              )),
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
                                            child: const Text(
                                              "Android is an open-source operating system for mobile devices, such as smartphones and tablets, developed by Google.\n"
                                              "\nThe primary programming language used for developing Android applications is Java.\n \nJava is an object-oriented programming language that is class-based, concurrent, "
                                              "and specifically designed to have as few implementation dependencies as possible.",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  backgroundColor:
                                                      Colors.transparent),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                  top: 160,
                                                  right: 280,
                                                  left: 10),
                                              child: const Text(
                                                "MyExperience:",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 220),
                                            child: const Text(
                                                style: TextStyle(
                                                    color: Colors.white),
                                                textAlign: TextAlign.left,
                                                "Create Android App Very Easy."
                                                "I Have Make One App of Android. "),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 300),
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
                                            alignment: Alignment.topRight,
                                            margin: const EdgeInsets.only(
                                                top: 50, left: 5, right: 23),
                                            color: Colors.transparent,
                                            child: IconButton(
                                                onPressed: () {
                                                  Navigator.pop(
                                                      context, "home");
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                ),
                                                iconSize: 25),
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
                                                  bottom: 220,
                                                  right: 300,
                                                  left: 15),
                                              child: const Text(
                                                "Introduction:",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                              )),
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
                                                top: 20,
                                                bottom: 0,
                                                left: 20,
                                                right: 20),
                                            child: const Text(
                                              "Python is a high-level, interpreted, dynamically-typed, and object-oriented programming language.\n"
                                              "\nPython is known for its readability, simplicity, making it a popular choice for beginners and experienced developers alike.\n"
                                              "\nIt supports multiple programming paradigms, including procedural, object-oriented, and functional programming, and can be used for a wide range of tasks, including web development, data analysis, artificial intelligence, and scientific computing.\n ",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  backgroundColor:
                                                      Colors.transparent),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                top: 220,
                                                right: 280,
                                                left: 10,
                                              ),
                                              child: const Text(
                                                "MyExperience:",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 280),
                                            child: const Text(
                                                style: TextStyle(
                                                    color: Colors.white),
                                                textAlign: TextAlign.left,
                                                "Create Android App Very Easy."
                                                "I Have Make One App of Android. "),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 350),
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
                                            alignment: Alignment.topRight,
                                            margin: const EdgeInsets.only(
                                                top: 50, left: 5, right: 23),
                                            color: Colors.transparent,
                                            child: IconButton(
                                                onPressed: () {
                                                  Navigator.pop(
                                                      context, "home");
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                ),
                                                iconSize: 25),
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
                                                  bottom: 220,
                                                  right: 300,
                                                  left: 15),
                                              child: const Text(
                                                "Introduction:",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                              )),
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
                                                bottom: 0, left: 20, right: 20),
                                            child: const Text(
                                              "JavaScript (JS) is a high-level, interpreted programming language.\n"
                                              "\nJavaScript is primarily used for creating dynamic and interactive web pages, but it is also used for server-side programming, game development, and the creation of desktop and mobile apps.\n "
                                              "\n JavaScript is a versatile language that supports object-oriented, functional, and procedural programming paradigms."
                                              "It is also an integral part of web technologies like HTML and CSS..",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  backgroundColor:
                                                      Colors.transparent),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                  top: 210,
                                                  right: 280,
                                                  left: 10),
                                              child: const Text(
                                                "MyExperience:",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 260),
                                            child: const Text(
                                                style: TextStyle(
                                                    color: Colors.white),
                                                textAlign: TextAlign.left,
                                                "Create Android App Very Easy."
                                                "I Have Make One App of Android. "),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 350),
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
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50,
                                                    left: 5,
                                                    right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(
                                                          context, "home");
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
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
                                                      bottom: 220,
                                                      right: 300,
                                                      left: 15),
                                                  child: const Text(
                                                    "Introduction:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                    textAlign: TextAlign.left,
                                                  )),
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
                                                    top: 30,
                                                    bottom: 0,
                                                    left: 20,
                                                    right: 20),
                                                child: const Text(
                                                  "Node.js is an open-source, cross-platform JavaScript runtime environment built on Chrome's V8 JavaScript engine.\n"
                                                  "\nNode.js enables developers to run JavaScript on the server side, creating an environment for building fast, scalable, and efficient server-side applications.\n "
                                                  "\nIt uses an event-driven, non-blocking I/O model that makes it well suited for real-time applications, such as chat applications, online games, and streaming services."
                                                  "Node.js has a  making it a popular choice for web development, building APIs, and creating full-stack applications.",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      backgroundColor:
                                                          Colors.transparent),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 260,
                                                      right: 280,
                                                      left: 10),
                                                  child: const Text(
                                                    "MyExperience:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 308),
                                                child: const Text(
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.left,
                                                    "Create Android App Very Easy."
                                                    "I Have Make One App of Android. "),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 375),
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
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50,
                                                    left: 5,
                                                    right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(
                                                          context, "home");
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
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
                                                      bottom: 220,
                                                      right: 300,
                                                      left: 15),
                                                  child: const Text(
                                                    "Introduction:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                    textAlign: TextAlign.left,
                                                  )),
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
                                                child: const Text(
                                                  "ReactJS is a JavaScript library for building user interfaces.\n"
                                                  "\nIt was developed and is maintained by Facebook and is used for creating dynamic and interactive web applications.\n "
                                                  "\nIt allows developers to create reusable UI components and manage the state of the application efficiently,"
                                                  "leading to faster and more efficient web applications..",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      backgroundColor:
                                                          Colors.transparent),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 160,
                                                      right: 280,
                                                      left: 10),
                                                  child: const Text(
                                                    "MyExperience:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 220),
                                                child: const Text(
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.left,
                                                    "Create Android App Very Easy."
                                                    "I Have Make One App of Android. "),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 300),
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
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50,
                                                    left: 5,
                                                    right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(
                                                          context, "home");
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
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
                                                      bottom: 220,
                                                      right: 300,
                                                      left: 15),
                                                  child: const Text(
                                                    "Introduction:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                    textAlign: TextAlign.left,
                                                  )),
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
                                                    top: 30,
                                                    bottom: 0,
                                                    left: 20,
                                                    right: 20),
                                                child: const Text(
                                                  "Angular is a JavaScript framework for building web applications.\n"
                                                  "\nAngular follows the Model-View-Controller (MVC) architecture pattern and uses TypeScript, a statically typed language that builds on top of JavaScript.\n"
                                                  "\nIt provides a complete solution for building web applications, including features such as two-way data binding, modularization, template-based views, and built-in support for HTTP services, dependency injection and more."
                                                  "With its powerful set of features, Angular helps developers build high-performing, maintainable, and scalable applications.",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      backgroundColor:
                                                          Colors.transparent),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 280,
                                                      right: 280,
                                                      left: 10),
                                                  child: const Text(
                                                    "MyExperience:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 330),
                                                child: const Text(
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.left,
                                                    "Create Android App Very Easy."
                                                    "I Have Make One App of Android. "),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 390),
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
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50,
                                                    left: 5,
                                                    right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(
                                                          context, "home");
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
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
                                                      bottom: 220,
                                                      right: 300,
                                                      left: 15),
                                                  child: const Text(
                                                    "Introduction:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                    textAlign: TextAlign.left,
                                                  )),
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
                                                child: const Text(
                                                  "It is an object-oriented language that is class-based and uses a syntax that is similar to C and C++.\n"
                                                  "\nThe primary programming language used for developing Android applications is Java.\n "
                                                  "\nJava is an object-oriented programming language that is class-based, concurrent, "
                                                  "and specifically designed to have as few implementation dependencies as possible.",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      backgroundColor:
                                                          Colors.transparent),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 160,
                                                      right: 280,
                                                      left: 10),
                                                  child: const Text(
                                                    "MyExperience:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 220),
                                                child: const Text(
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.left,
                                                    "Create Android App Very Easy."
                                                    "I Have Make One App of Android. "),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 300),
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
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50,
                                                    left: 5,
                                                    right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(
                                                          context, "home");
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
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
                                                      bottom: 220,
                                                      right: 300,
                                                      left: 15),
                                                  child: const Text(
                                                    "Introduction:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                    textAlign: TextAlign.left,
                                                  )),
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
                                                child: const Text(
                                                  "While C++ was designed to be an extension of C, adding object-oriented programming capabilities.\n"
                                                  "\nC and C++ are both widely used for developing system software, such as operating systems, device drivers, and embedded systems.\n"
                                                  " \nThey are also used for developing a wide range of applications, including desktop applications,"
                                                  "games, and performance-critical applications.",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      backgroundColor:
                                                          Colors.transparent),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 160,
                                                      right: 280,
                                                      left: 10),
                                                  child: const Text(
                                                    "MyExperience:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 220),
                                                child: const Text(
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.left,
                                                    "Create Android App Very Easy."
                                                    "I Have Make One App of Android. "),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 300),
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
                                                alignment: Alignment.topRight,
                                                margin: const EdgeInsets.only(
                                                    top: 50,
                                                    left: 5,
                                                    right: 23),
                                                color: Colors.transparent,
                                                child: IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(
                                                          context, "home");
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                    ),
                                                    iconSize: 25),
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
                                                      bottom: 220,
                                                      right: 300,
                                                      left: 15),
                                                  child: const Text(
                                                    "Introduction:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                    textAlign: TextAlign.left,
                                                  )),
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
                                                    bottom: 0,
                                                    left: 20,
                                                    right: 20),
                                                child: const Text(
                                                  "Swift has become increasingly popular for developing iOS applications, and is now one of the fastest-growing programming languages in the world.\n"
                                                  "\nSwift is a statically-typed language, which means that the type of a variable is known at compile-time, allowing for easier and more efficient code.\n "
                                                  "\nSwift is designed to be easy to use, fast, and safe, with a syntax that is concise and expressive,"
                                                  "making it a great language for developing modern, high-quality applications.",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      backgroundColor:
                                                          Colors.transparent),
                                                ),
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 220,
                                                      right: 280,
                                                      left: 10),
                                                  child: const Text(
                                                    "MyExperience:",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 270),
                                                child: const Text(
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.left,
                                                    "Create Android App Very Easy."
                                                    "I Have Make One App of Android. "),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 350),
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
}

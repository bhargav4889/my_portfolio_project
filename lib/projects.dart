import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});
  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff252525),
        title: const Text("Projects"),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: const Color(0xff262628),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Android",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("MyBilSupplies",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                            "A Generating Invoice Bill Without Internet With PDF",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 16)),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.white70,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("10.0",
                                style: TextStyle(color: Colors.white70)),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  FontAwesomeIcons.github,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: const Color(0xff262628),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Flutter",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("MyPortFolio",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("About Me ! And My Skils",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 16)),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.white70,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("9.8",
                                style: TextStyle(color: Colors.white70)),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  FontAwesomeIcons.github,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: const Color(0xff262628),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("ReactJs",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Faculty Management",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Add Faculty And Manage Faculty",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 16)),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.white70,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("10.0",
                                style: TextStyle(color: Colors.white70)),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  FontAwesomeIcons.github,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: const Color(0xff262628),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("PHP",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Tourism Management",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("A Easily Tour Package Book And Low Price ",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 16)),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.white70,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("10.0",
                                style: TextStyle(color: Colors.white70)),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  FontAwesomeIcons.github,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: const Color(0xff262628),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("PHP",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Tourism Management",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("A Easily Tour Package Book And Low Price ",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 16)),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.white70,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("10.0",
                                style: TextStyle(color: Colors.white70)),
                            Expanded(child: Container()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  FontAwesomeIcons.github,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

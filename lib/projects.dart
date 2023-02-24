import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

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
      body:  FutureBuilder<http.Response>(
        future: getWebFromServer(),
        builder: (context, snapshot) {
          return ListView.builder(
              itemCount: 1,
              itemBuilder:
                  (context, index) {
                if (snapshot.hasData) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 220,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Card(
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: const Color(0xff262628),
                            child: Container(
                              margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text((jsonDecode(snapshot.data!.body.toString())[0]['Project_Title'].toString()),
                                      style:
                                     const  TextStyle(color: Colors.white, fontSize: 18)),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                   Text((jsonDecode(snapshot.data!.body.toString())[0]['Project_Name'].toString()),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                   Text((jsonDecode(snapshot.data!.body.toString())[0]['Project_About'].toString()),
                                      style:
                                    const   TextStyle(color: Colors.white70, fontSize: 16)),
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
                                       Text((jsonDecode(snapshot.data!.body.toString())[0]['Rating'].toString()),
                                          style: const TextStyle(color: Colors.white70)),
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
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: const Color(0xff262628),
                            child: Container(
                              margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text((jsonDecode(snapshot.data!.body.toString())[1]['Project_Title'].toString()),
                                      style:
                                      const  TextStyle(color: Colors.white, fontSize: 18)),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text((jsonDecode(snapshot.data!.body.toString())[1]['Project_Name'].toString()),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text((jsonDecode(snapshot.data!.body.toString())[1]['Project_About'].toString()),
                                      style:
                                      const   TextStyle(color: Colors.white70, fontSize: 16)),
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
                                      Text((jsonDecode(snapshot.data!.body.toString())[0]['Rating'].toString()),
                                          style: const TextStyle(color: Colors.white70)),
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
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: const Color(0xff262628),
                            child: Container(
                              margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text((jsonDecode(snapshot.data!.body.toString())[2]['Project_Title'].toString()),
                                      style:
                                      const  TextStyle(color: Colors.white, fontSize: 18)),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text((jsonDecode(snapshot.data!.body.toString())[2]['Project_Name'].toString()),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text((jsonDecode(snapshot.data!.body.toString())[2]['Project_About'].toString()),
                                      style:
                                      const   TextStyle(color: Colors.white70, fontSize: 16)),
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
                                      Text((jsonDecode(snapshot.data!.body.toString())[0]['Rating'].toString()),
                                          style: const TextStyle(color: Colors.white70)),
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
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: const Color(0xff262628),
                            child: Container(
                              margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text((jsonDecode(snapshot.data!.body.toString())[3]['Project_Title'].toString()),
                                      style:
                                      const  TextStyle(color: Colors.white, fontSize: 18)),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text((jsonDecode(snapshot.data!.body.toString())[3]['Project_Name'].toString()),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text((jsonDecode(snapshot.data!.body.toString())[3]['Project_About'].toString()),
                                      style:
                                      const   TextStyle(color: Colors.white70, fontSize: 16)),
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
                                      Text((jsonDecode(snapshot.data!.body.toString())[3]['Rating'].toString()),
                                          style: const TextStyle(color: Colors.white70)),
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
                  );
                } else {
                  return Container(
                    padding:
                     EdgeInsets
                        .only(
                        top: MediaQuery.of(context).size.width),
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
    );
  }
  Future<http.Response> getWebFromServer() async {
    var response = await http.get(
        Uri.parse("https://63f7341fe40e087c9589714b.mockapi.io/My_Projects"));
    return response;
  }
}

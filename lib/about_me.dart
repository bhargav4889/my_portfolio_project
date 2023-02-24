import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/home.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: Image.network("https://lh3.googleusercontent.com/jqTFxd0DtH6JeCDaPSoRfPEiuCjfUuvLMPtKml4W_ZoWM9nzuuUEfbJwRI226PgRMPeOaUfVx8t70S7Ar07Jp8GPSe-6DX1GaGBA01D-j_hpKUME-3Pn1YU3MnUxPRX10qSEjGXbV59wdjN9Wtdh77vI6UoAo-poRXh4568wl2g8pT46tSkLFtjIZ_BapUFp_pfbQfRgsJLjAxGkVynE_P54ITkVKXRTTHLR7UYxZUjgVKEG7-gqeFXan2R8gbGWNMDLFqhdTuVF5jY4SdDNX3OoHttdaX_jC4zHfHo6Q5etFWpt_MxPiN7eZoYE-KtcxOI0gNGFRiMvgYZZvLr7_LCRTaJzsfAnQjlI84I5fP8IZyudye9bIe9lUvP6aWuMOkgE5DJBQmmKnqFBzsXJs4oJ4CymUOozKHpjqaGwcejqrQUgNobhDOoZexn7ueQU-ZK7oHGmWAcuRXEJWwx7j5Hs73PUTL9k0AfW9zjPOcuOCWINoTQcxzJkExWGKcGUYoHvUPGkR7LB1-d_EWuiQSkOgXonsLGNW73pmLNh62O_KFQOj7tp6aRV7ReO50xGWmXUTHD-Y-dkeHJaA34Knz7Snj-wePgykMxTRPQEFr-Bhyj0w2AH3YCUIcjmDQ-sJbV6Kz0mncxuPi-lFpmfUB1WIe4Pleap1vTWjRWwr4hMQxmvZ62PuSKgTwQViitcz7V08vxmddL83CE-2k4UFBNbI8018a2XVsiaWmOf5XoJoh6vHyD5bESDv5YREDjJPw4LSYLFBdVxnjijpt4Tat8OP4Nk9-WiKb8PXwxcS1wyOI3PxZZwLtzIOqNuQwcrWn2ryQUbLTrgn4LZ4JGy4dG_OliGxvap0tQNJvznC_NkHalnMHwtt7AO1Q4iX79VMyMltetShjitX00s3_IxFoBPBCPZ3cjClwNF63qUVqNr8DoYcd6GtCP38FDRQoKlEQRTEmhw88gq5uAOP_OOeZenptDRTjzc1PHN5e1dGaWMozZiZP7U_1ss=s625-no?authuser=0",
            fit: BoxFit.cover),
          ),
          Container(
            alignment: Alignment.center,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.55),
            child: Column(
              children: [
                const Text("BHARGAV KACHHELA",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 2,
                ),
                const Text("SOFTWARE DEVELOPER",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 9,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Home();
                        },
                      ));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    child: const Text("View My Skills")),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

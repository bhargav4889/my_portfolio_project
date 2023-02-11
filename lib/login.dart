import 'package:flutter/material.dart';
import 'package:my_portfolio/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var usercontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var indicator = const CircularProgressIndicator();

  void validate() {
    if (formkey.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const Home();
        },
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login.png"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 185, left: 45),
              child: const Text("Welcome !",
                  style: TextStyle(color: Colors.white, fontSize: 35,fontFamily: "Soho"),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(top: 425, left: 35, right: 35),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: const Text("Login",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Soho"
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Email ";
                              }
                              return null;
                            },
                            controller: usercontroller,
                            decoration: InputDecoration(
                                fillColor: Colors.white12,
                                filled: true,
                                labelText: "Enter Email ",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Password.";
                              }
                              return null;
                            },
                            obscureText: true,
                            controller: passwordcontroller,
                            decoration: InputDecoration(
                                fillColor: Colors.white12,
                                filled: true,
                                labelText: "Enter Password ",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(''),
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.lightBlue,
                            child: IconButton(
                                color: Colors.white,
                                onPressed: () {
                                  validate();
                                  indicator;
                                },
                                icon: const Icon(Icons.arrow_forward))),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

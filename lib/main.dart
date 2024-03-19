import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp([Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyLogin(),
    );
  }
}

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
              width: double.infinity,
              height: 150,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 15),
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Text(
                "Login Screen App",
                style: TextStyle(color: Colors.white, fontSize: 22),
              )),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  "CodePlayon",
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: "User Name ",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: "Password ",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                    vertical: 22,
                    horizontal: 140,
                  )),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Does not have account?    ",
                      style: TextStyle(fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

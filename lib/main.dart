import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFEC900),
        body: SizedBox(
          
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/Bottomshape.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: 80,
                right: 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(0.5, 0.5),
                    backgroundColor: Colors.black.withOpacity(0.02),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        ),
                  ),
                  onPressed: () {},
                  child: const Icon(Icons.more_vert),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 70),
                    Image.asset(
                      'assets/logo.png',
                      width: MediaQuery.of(context).size.width * 0.33,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Welcome to the',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18,fontFamily: 'Inter'),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'TBB Mobile Banking',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20,fontFamily: 'Inter'),
                    ),
                    const Divider(
                      height: 10,
                      thickness: 1,
                      indent: 150,
                      endIndent: 150,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 30),
                    Image.asset(
                      'assets/center art.png',
                      width: MediaQuery.of(context).size.width * 0.38
                    ),
                    const SizedBox(height: 100),
                    const Text(
                      'Visit TBB services anytime, anywhere.',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16,fontFamily: 'Inter'),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Get Started!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 35),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(5),
                          backgroundColor: const Color(0xffFCB731),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('or',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Create an Account',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline
                                  ),
                            ))
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Text('Version 2.0 Concept from Silicon Stories',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, fontFamily: 'Inter'),),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
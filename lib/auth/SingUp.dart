import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 23),
        child: SingleChildScrollView(
          child: Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 175,
                  child: Image.asset(
                    color: Color.fromARGB(255, 139, 128, 128).withOpacity(0.8),
                    colorBlendMode: BlendMode.modulate,
                    'images/scope.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'images/logo_tabibi.png',
                    width: 195,
                    height: 118,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 160),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color.fromARGB(249, 255, 255, 255),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 40, top: 28),
                        child: Column(children: [
                          Text(
                            'Register with us!',
                            style: TextStyle(
                                color: Color(0xFF034277),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 32),
                          ),
                          Text(
                            textAlign: TextAlign.end,
                            'Your information is safe with us,',
                            style: TextStyle(
                                fontFamily: 'PoppinsExtraLight',
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: TextFormField(
                              cursorHeight: 30,
                              decoration: InputDecoration(
                                  label: Text(
                                    'Full Name',
                                    style: TextStyle(
                                        fontFamily: 'PoppinsExtraLight',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: TextFormField(
                              cursorHeight: 30,
                              decoration: InputDecoration(
                                  label: Text(
                                    'Email',
                                    style: TextStyle(
                                        fontFamily: 'PoppinsExtraLight',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: TextFormField(
                              cursorHeight: 30,
                              decoration: InputDecoration(
                                  label: Text(
                                    'Password',
                                    style: TextStyle(
                                        fontFamily: 'PoppinsExtraLight',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: TextFormField(
                              cursorHeight: 30,
                              decoration: InputDecoration(
                                  label: Text(
                                    'Confirm Password',
                                    style: TextStyle(
                                        fontFamily: 'PoppinsExtraLight',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF3279B6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              // background (button) color
                              // foreground (text) color
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: Row(children: [
                              Expanded(
                                flex: 1,
                                child: Divider(
                                  color: Colors.black,
                                  // height: 30,
                                  thickness: 2,
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 13),
                                child:
                                    Container(child: Text('Or Sign in with')),
                              )),
                              Expanded(
                                flex: 1,
                                child: Divider(
                                  color: Colors.black,
                                  // height: 30,
                                  thickness: 2,
                                ),
                              ),
                            ]),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon:
                                      Image.asset('add_Icons/google-plus.png')),
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('add_Icons/apple.png')),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.facebook_outlined,
                                    size: 28,
                                  ))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have account ?',
                                style: TextStyle(
                                    fontFamily: 'PoppinsExtraLight',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              TextButton(
                                  onPressed: () {
                                                            Navigator.of(context).pushReplacementNamed('Log_in');

                                  },
                                  child: Text(
                                    'Log in',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'Poppins'),
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

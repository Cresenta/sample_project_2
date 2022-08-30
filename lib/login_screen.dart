import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_project_2/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  var _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
          child: SvgPicture.asset(
            "svg/icon/iglo_logo_small_white.svg",
            fit: BoxFit.contain
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("svg/icon/iglo_logo_big_color.svg"),
                  Row(
                    children: const [
                      Text("Username"),
                      Spacer()
                    ],
                  ),
                  const SizedBox(height: 8,),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color.fromRGBO(211, 211, 211, 1)
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color.fromRGBO(211, 211, 211, 1)
                        )
                      )
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    children: const [
                      Text("Password"),
                      Spacer()
                    ],
                  ),
                  const SizedBox(height: 8,),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color.fromRGBO(211, 211, 211, 1)
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color.fromRGBO(211, 211, 211, 1)
                        )
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                            _isPasswordVisible ? Icons.visibility : Icons.visibility_off
                        ),
                        onPressed: _togglePasswordVisibility,
                      )
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          print("forgot password");
                        },
                        child: const Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  var username = _usernameController.text.toString();
                  var password = _passwordController.text.toString();
                  print("username: $username");
                  print("password: $password");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.red),
                    )
                  )
                ),
                child: const Text(
                  "Log In",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8,),
            SizedBox(
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const RegisterScreen();
                    })
                  );
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.red),
                    )
                  )
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                print("Privacy Policy");
              },
              child: Container(
                height: 48,
                color: Colors.white,
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset("svg/icon/ico_prv_polcy.svg"),
                    const SizedBox(width: 4,),
                    const Text(
                      "Privacy Policy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer()
                  ],
                ),
              )
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print("feedback");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size(0, 34)
                      )
                    ),
                    icon: SvgPicture.asset("svg/icon/ico_feedback.svg"),
                    label: const Text(
                      "Feedback",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  )
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print("share");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size(0, 32)
                      )
                    ),
                    icon: SvgPicture.asset("svg/icon/ico_share.svg"),
                    label: const Text(
                      "Share",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

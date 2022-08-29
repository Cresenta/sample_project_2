import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

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
                  TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                        hintText: "Enter Username"
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    children: const [
                      Text("Password"),
                      Spacer()
                    ],
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                        hintText: "Enter Password"
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
                onPressed: () {},
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
                onPressed: () {},
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
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white70)
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("svg/icon/ico_feedback.svg"),
                      const SizedBox(width: 4,),
                      const Text(
                        "Feedback",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  )
                ),
                const SizedBox(width: 8,),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white70)
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("svg/icon/ico_share.svg"),
                        const SizedBox(width: 4,),
                        const Text(
                          "Share",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
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

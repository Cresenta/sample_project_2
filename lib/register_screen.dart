import 'package:flutter/material.dart';
import 'package:sample_project_2/unordered_list.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _referralCodeController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _passwordLowerCaseReq = "1 lower case letter [a-z]";
  final _passwordUpperCaseReq = "1 upper case letter [A-Z]";
  final _passwordNumericReq = "1 numeric character [0-9]";
  final _passwordLengthReq = "at least 10 characters in length";
  var _passwordContainLowerCase = false;
  var _passwordContainUpperCase = false;
  var _passwordContainNumeric = false;
  var _isPassword10CharOrMore = false;
  var _isPasswordVisible = false;
  var _isConfirmPasswordVisible = false;
  var _passwordMeetRequirements = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
  }

  void _changePasswordContainLowerCase(bool isTrue) {
    setState(() {
      _passwordContainLowerCase = isTrue;
    });
  }

  void _changePasswordContainUpperCase(bool isTrue) {
    setState(() {
      _passwordContainUpperCase = isTrue;
    });
  }

  void _changePasswordContainNumeric(bool isTrue) {
    setState(() {
      _passwordContainNumeric = isTrue;
    });
  }

  void _changeIsPassword10CharOrMore(bool isTrue) {
    setState(() {
      _isPassword10CharOrMore = isTrue;
    });
  }

  void _changePasswordMeetRequirements(bool isTrue) {
    setState(() {
      _passwordMeetRequirements = isTrue;
    });
  }

  Widget _passwordRequirements() {
    final resultWidget = <Widget>[];
    final passwordRequirementList = <String>[];
    var reqCount = 0;
    if (!_passwordContainLowerCase) {
      passwordRequirementList.add(_passwordLowerCaseReq);
      reqCount++;
    }
    if (!_passwordContainUpperCase) {
      passwordRequirementList.add(_passwordUpperCaseReq);
      reqCount++;
    }
    if (!_passwordContainNumeric) {
      passwordRequirementList.add(_passwordNumericReq);
      reqCount++;
    }
    if (!_isPassword10CharOrMore) {
      passwordRequirementList.add(_passwordLengthReq);
      reqCount++;
    }
    if (reqCount > 0) {
      resultWidget.add(
        const Text(
          "password must contain",
          style: TextStyle(
            fontSize: 10,
          ),
        )
      );
      resultWidget.add(
        const SizedBox(height: 8,)
      );
      resultWidget.add(UnorderedList(passwordRequirementList));
      _changePasswordMeetRequirements(false);
    } else {
      _changePasswordMeetRequirements(true);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: resultWidget,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 48,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Please Fill in the Following Data",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ),
              Row(
                children: const [
                  Text("First Name"),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  hintText: "Input your first name",
                  filled: true,
                  fillColor: Colors.white,
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
                  Text("Last Name"),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  hintText: "Input your last name",
                  filled: true,
                  fillColor: Colors.white,
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
                  Text("Email"),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Input your email",
                  filled: true,
                  fillColor: Colors.white,
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
                ),
              ),
              const SizedBox(height: 16,),
              Row(
                children: const [
                  Text("Phone Number"),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  hintText: "Input your phone number",
                  filled: true,
                  fillColor: Colors.white,
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
                  Text("Referral Code"),
                ],
              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: _referralCodeController,
                decoration: InputDecoration(
                  hintText: "Input your referral code",
                  filled: true,
                  fillColor: Colors.white,
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
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  hintText: "Input your password",
                  filled: true,
                  fillColor: Colors.white,
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
                    onPressed: () {
                      _togglePasswordVisibility();
                    },
                  )
                ),
                onChanged: (text) {
                  RegExp lowerCaseRegEx = RegExp(r"([a-z])");
                  RegExp upperCaseRegEx = RegExp(r"([A-Z])");
                  RegExp numericRegEx = RegExp(r"([0-9])");
                  _changePasswordContainLowerCase(lowerCaseRegEx.hasMatch(text));
                  _changePasswordContainUpperCase(upperCaseRegEx.hasMatch(text));
                  _changePasswordContainNumeric(numericRegEx.hasMatch(text));
                  _changeIsPassword10CharOrMore(text.length >= 10);
                  _passwordRequirements();
                },
              ),
              const SizedBox(height: 8,),
              _passwordRequirements(),
              const SizedBox(height: 16,),
              Row(
                children: const [
                  Text("Confirm Password"),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: !_isConfirmPasswordVisible,
                decoration: InputDecoration(
                  hintText: "Input your password",
                  filled: true,
                  fillColor: Colors.white,
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
                      _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off
                    ),
                    onPressed: () {
                      _toggleConfirmPasswordVisibility();
                    },
                  )
                ),
              ),
              const SizedBox(height: 36,),
              SizedBox(
                height: 48,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    var reqNotMet = 0;
                    if (_firstNameController.text.isEmpty) {
                      print("First name must not be empty");
                      reqNotMet++;
                    }
                    if (_lastNameController.text.isEmpty) {
                      print("Last name must not be empty");
                      reqNotMet++;
                    }
                    if (_emailController.text.isEmpty) {
                      print("Email must not be empty");
                      reqNotMet++;
                    }
                    if (_phoneNumberController.text.isEmpty) {
                      print("Phone number must not be empty");
                      reqNotMet++;
                    }
                    if (_passwordMeetRequirements) {
                      print("Password requirements met");
                    } else {
                      print("Password does not meet the requirements");
                      reqNotMet++;
                    }
                    if (_passwordController.text != _confirmPasswordController.text) {
                      print("Password and confirm password does not match");
                      reqNotMet++;
                    }
                    reqNotMet == 0 ? print("Submitted") : print("Not submitted");
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
                    "Submit",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              SizedBox(
                height: 48,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    )
                  ),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

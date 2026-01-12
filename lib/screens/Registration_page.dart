import 'package:delivery_food_app/screens/Login_page.dart';
import 'package:delivery_food_app/screens/meal_page.dart';
import 'package:delivery_food_app/widget/custom_text_formfield.dart';
import 'package:delivery_food_app/widget/customebutton.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  final formkey = GlobalKey<FormState>();
  bool isobscure = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('sign up')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                CircleAvatar(
                  radius: 70,
                  child: Icon(
                    Icons.delivery_dining,
                    size: 70,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Delivery',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                SizedBox(height: 20),
                customtextfield(
                  hinttext: 'email',
                  suffixIcon: Icon(Icons.email),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter your email';
                    } else if (!value.contains('@')) {
                      return 'enter valid email @';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                customtextfield(
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 6) {
                      return 'enter your passord';
                    }
                    return null;
                  },
                  obscureText: isobscure,
                  hinttext: 'password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      isobscure = !isobscure;
                      setState(() {});
                    },
                    icon: Icon(
                      isobscure ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),

                SizedBox(height: 16),
                customtextfield(
                  hinttext: 'phone',
                  suffixIcon: Icon(Icons.phone),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter your phine';
                    } else if (!value.contains('011')) {
                      return 'enter valid phone';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 16),
                customtextfield(
                  hinttext: 'name',
                  suffixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter your phine';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 16),
                Customebotton(
                  formkey: formkey,
                  text: 'signup',
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => loginscreen()),
                        (Route<dynamic> route) => false,
                      );
                    }
                  },
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loginscreen()),
                    );
                  },
                  child: Text('do have account /login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

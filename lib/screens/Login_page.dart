import 'package:delivery_food_app/screens/Registration_page.dart';
import 'package:delivery_food_app/screens/meal_page.dart';
import 'package:delivery_food_app/widget/custom_text_formfield.dart';
import 'package:delivery_food_app/widget/customebutton.dart';
import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final formkey = GlobalKey<FormState>();
  bool isobscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('login')),
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
                Customebotton(
                  formkey: formkey,
                  text: 'login',
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => MealPage()),
                        (Route<dynamic> route) => false,
                      );
                    }
                  },
                ),
                SizedBox(height: 20),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistrationPage(),
                      ),
                    );
                  },
                  child: Text('do have account /signup'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

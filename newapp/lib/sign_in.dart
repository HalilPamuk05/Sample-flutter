import 'dart:developer';

import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8D72E1),
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
        backgroundColor: Color(0xff8D72E1),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'Lütfen bilgilerinizi eksiksiz olarak doldurunuz.',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      TextFields('Email@gmail.com', TextInputType.emailAddress,
                          false, 'Email'),
                      TextFields('Kullanıcı Adı:', TextInputType.name, false,
                          'Kullaniciadi'),
                      TextFields('Şifre:', TextInputType.text, true, 'Sifre'),
                      TextFields('Tel:', TextInputType.number, false, 'Tel'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  constraints: BoxConstraints.expand(width: 300, height: 50),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Kayıt Ol'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding TextFields(hintText, keyboardType, obscureText, labelText) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labelText,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Color(0xff8D72E1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

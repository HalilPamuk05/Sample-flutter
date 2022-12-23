import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/first_page.dart';
import 'package:newapp/sign_in.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userName = 'Admin', _password = 'Admin';
  String userName1 = '', password1 = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8D72E1),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.pngall.com/wp-content/uploads/5/Alarm-PNG-HD-Image.png'),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
              //Welcome
              Text(
                'Welcome',
                style: TextStyle(
                    fontFamily: 'ZenDots',
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              //Username TextField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextFormField(
                      onSaved: (userName) {
                        userName1 = userName!;
                      },
                      validator: (userName) {
                        if (userName!.length <= 4) {
                          return 'Kullanıcı en az 4 karakterli olmalıdır.';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                        hintStyle: TextStyle(
                            color: Color(0xff8D72E1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              //Password TextField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextFormField(
                      onSaved: (password) {
                        password1 = password!;
                      },
                      validator: (password) {
                        if (password!.length <= 4) {
                          return 'Kullanıcı Adı veya Şifre Hatalı.';
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: Color(0xff8D72E1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Login button
              Container(
                width: 360,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    bool _valitade = _formKey.currentState!.validate();
                    if (_valitade) {
                      _formKey.currentState!.save();
                      if (userName1 == _userName && password1 == _password) {
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (FirstPagecontext) => FirstPage(),
                            ));
                      } else {
                        print('Login işlemi Başarısız.');
                      }
                    }
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Color(0xff8D72E1),
                    side: BorderSide(
                        width: 2,
                        color: Color(0xff8D72E1),
                        strokeAlign: StrokeAlign.inside),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) => SingIn()));
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    child: Text('/', style: TextStyle(color: Colors.white)),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

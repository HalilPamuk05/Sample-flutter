import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/ilksayfam.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

final _userName = 'Admin', _password = 'Admin';
String kullaniciAdi1 = '', Sifre1 = '';

final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8D72E1),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Welcome
              Text(
                'Welcome',
                style: TextStyle(
                    fontFamily: 'ZenDots',
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),),
              SizedBox(
                height: 20,
              ),
        
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
                      onSaved: (kullaniciAdi) {
                        kullaniciAdi1 = kullaniciAdi!;
                      },
                      validator: (kullaniciAdi) {
                        if(kullaniciAdi!.length <= 4){
                          return 'Kullanıcı en az 4 karakterli olmalıdır.';
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                          hintStyle: TextStyle(
                              color: Color(0xff8D72E1),
                              fontWeight: FontWeight.bold)), 
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
        
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
                      onSaved: (sifre) {
                        Sifre1 = sifre!; 
                      },
                      validator: (sifre) {
                        if(sifre!.length <= 4){
                          return 'Şifre en az 4 Karakterli olmalıdır';
                        }
                        else{
                          return null;
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Color(0xff8D72E1),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
        
              // Login button
              Container(
                width: 360,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    bool _valitade = _formKey.currentState!.validate();
                        if( _valitade){
                         _formKey.currentState!.save();
                            if(kullaniciAdi1 == _userName && Sifre1 == _password){
                              Navigator.push(context, CupertinoPageRoute(builder:(FirstPagecontext) => FirstPage(), ));
                        }
                            else{
                              print('Login işlemi Başarısız.');
                        }
                         }                  
                  }, 
                  child: Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                  style: ElevatedButton.styleFrom(primary: Colors.white, 
                  onPrimary: Color(0xff8D72E1),
                  side: BorderSide(width: 2, color: Color(0xff8D72E1), 
                  strokeAlign: StrokeAlign.inside), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                  ),
              ),    
              Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(color: Colors.white),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

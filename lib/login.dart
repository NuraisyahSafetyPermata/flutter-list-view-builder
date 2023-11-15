import 'package:flutter/material.dart';
import 'package:tampilan_data_produk/listproduk.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Kontrol Username, Password
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: formKey,
          child: Center(
            child: SizedBox(
                width: 280,
                height: 240,
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.purple,
                    color: const Color.fromARGB(255, 238, 212, 248),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: cUser,
                            decoration: InputDecoration(
                                labelText: 'Username',
                                hintText: 'Input Usrname',
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Username Required';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true, //membuat password tidak terlihat
                            controller: cPass,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Input Password',
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password Required';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // button login
                          ElevatedButton(
                            onPressed: () {
                              String tUser = 'admin';
                              String tPass = '12345';
                              if (formKey.currentState!.validate()) {
                                if (cUser.text == tUser &&
                                    cPass.text == tPass) {
                                  //Perintah untuk memanggil halaman baru
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ListProduk(),
                                      ));
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title:
                                              const Text('Login Confirmation'),
                                          content: const Text(
                                              'Incorrect Username and Password'),
                                          actions: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  cUser.text = '';
                                                  cPass.text = '';
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text('Ok'))
                                          ],
                                        );
                                      });
                                }
                              }
                            },
                            child: const Text('LOGIN'),
                          )
                        ],
                      ),
                    ))),
          )),
    );
  }
}

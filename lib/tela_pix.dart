import 'dart:collection';

import 'package:flutter/material.dart';

class TelaPix extends StatelessWidget {
  const TelaPix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, 
        elevation: 0.0,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20),

              Text(
                "Fazer um pix",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 60),

              Container(
                width: double.infinity,
                height: 110,
                padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20,
                      ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF0F7A4D),
                      Color(0xFF074E30),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chave Pix",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: '',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 40),

              Row(
                children: [
                  Container(
                      width: 250,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF0F7A4D),
                            Color(0xFF074E30),
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Valor",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                "R\$",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                ),
                                SizedBox(width: 10,),
                              Expanded(child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white),
                                  ),
                                ),
                          ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(137, 18, 112, 81)
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "Seu saldo",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "R\$ 76,08",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 116, 116, 116),
                    minimumSize: const Size(80, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 80),

              Center(
                child: Container(
                width: 350,
                height: 350,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 0),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "../images/qr_code.png",
                      width: 200,
                      ),
                    Text(
                      "Ler QR Code",
                      style: TextStyle(
                        color: Color(0xFF0F7A4D),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

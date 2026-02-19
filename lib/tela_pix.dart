import 'package:flutter/material.dart';

class TelaPix extends StatelessWidget {
  const TelaPix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent, 
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20),

              Text(
                'Fazer um pix',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 60),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                        horizontal: 30,
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
                      'Chave Pix',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      cursorColor: Colors.white, 
                      style: TextStyle(color: Colors.white,),
                      decoration: InputDecoration(
                        isDense: true,  // retira espaçamentos padrão
                        labelText: '',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder( 
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 60),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
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
                            'Valor',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text(
                                'R\$',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),

                              SizedBox(width: 10,),

                              Expanded(
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder( 
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 20),

                  Container(
                    width: 200,
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(107, 24, 130, 95)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seu saldo',
                        ),
                        SizedBox(height: 5,),                          
                        Text(
                          'R\$ 76,08',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 60),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(80, 60),
                  ),
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 80),

              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, // remove padding
                    splashFactory: NoSplash.splashFactory, 
                    overlayColor: Colors.transparent, // remove hover/cor ao clicar
                  ),
                  onPressed: () {},
                  child: Container(
                    width: 350,
                    height: 400,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(86, 158, 158, 158),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 0),  // (x,y)
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'images/qr_code.png',
                          width: 250,
                        ),
                        Text(
                          'Ler QR Code',
                          style: TextStyle(
                            color: Color(0xFF0F7A4D),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Авторизация',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(70.0),
              child: Text('Авторизация', style: TextStyle(fontSize: 32, color: Colors.black87,
                  fontWeight: FontWeight.w800),
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children:[

              const Padding(
                padding:EdgeInsets.all(10.0),
                child:  SizedBox( width: 360,
                  child: TextField( style: TextStyle(fontSize: 18, color: Color.fromRGBO(11, 107, 254, 1.0)
                  ),
                      decoration: InputDecoration(
                        hintText: 'Логин',
                        hintStyle: TextStyle(color: Colors.grey,),
                        fillColor: Color.fromRGBO(240, 239, 244, 1.0),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide.none
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 18),
                      )
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox( width: 360,
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(11, 107, 254, 1.0)
                    ),

                    decoration: InputDecoration(
                      hintText: 'Пароль',
                      hintStyle: TextStyle(color: Colors.grey,),
                      fillColor: Color.fromRGBO(240, 239, 244, 1.0),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide.none
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 18),
                    ),

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      SizedBox(
                        height: 8, width: 50,
                        child: Checkbox(
                          fillColor: WidgetStateProperty.resolveWith((states) {
                            if (states.contains(WidgetState.dragged)) {
                              return Colors.grey;
                            }
                            return null;
                          }),
                          side: const BorderSide(color: Colors.grey, width: 1.7,),
                          value: false,
                          onChanged:(bool? value) {},
                          checkColor: Colors.grey,

                        ),
                      ),
                      const Text('Запомнить меня', style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ]
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 360,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(9, 96, 248, 1.0),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(child: Text("Войти", style: TextStyle(fontSize: 18,
                    color: Color.fromRGBO(228, 253, 255, 1.0),
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 360,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: const Color.fromRGBO(9, 96, 248, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(child: Text("Регистрация",
                    style: TextStyle(fontSize: 18,
                      color: Color.fromRGBO(80, 139, 174, 1.0),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  ),

                ),
              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Восстановить пароль',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ]
            ),
            const SizedBox(height: 180,
            ),
          ],
        )

    );
  }
}
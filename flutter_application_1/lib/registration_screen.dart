import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Магизин цветов'),
        backgroundColor: const Color.fromARGB(255, 72, 70, 72),
      ),
      body: Container(
        color: const Color.fromARGB(255, 72, 70, 72), // задний фон в серый цвет
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Добро пожаловать!',
                style: TextStyle(fontSize: 24, color: Colors.white), // текст белого цвета
              ),
              SizedBox(height: 40),
              FractionallySizedBox(
                widthFactor: 0.5, // ширина поля ввода - 50% от ширины экрана
                child: TextField(
                  style: TextStyle(color: Colors.white), // текст в полях белого цвета
                  decoration: InputDecoration(
                    labelText: 'Логин',
                    labelStyle: TextStyle(color: Colors.white), // цвет текста метки
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // цвет обводки при фокусе
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), // отступы содержимого поля
                  ),
                ),
              ),
              SizedBox(height: 20),
              FractionallySizedBox(
                widthFactor: 0.5, // ширина поля ввода - 50% от ширины экрана
                child: TextField(
                  style: TextStyle(color: Colors.white), // текст в полях белого цвета
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    labelStyle: TextStyle(color: Colors.white), // цвет текста метки
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // цвет обводки при фокусе
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), // отступы содержимого поля
                  ),
                  obscureText: true, // скрываем вводимый текст
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/catalog');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow, // серый цвет кнопки
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  child: Text('Вход', style: TextStyle(fontSize: 16)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/new_registration');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow, // желтый цвет кнопки
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  child: Text('Регистрация', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

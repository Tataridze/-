import 'package:flutter/material.dart';

class NewRegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Регистрация нового пользователя'),
        backgroundColor: const Color.fromARGB(255, 72, 70, 72), // серый
      ),
      body: Container(
        color: const Color.fromARGB(255, 72, 70, 72), // задний фон в серый цвет
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  style: TextStyle(color: Colors.white), // текст в полях белого цвета
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey), // серый
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // белый
                    ),
                    fillColor: Colors.white, // цвет заливки
                    filled: true, // заливаемый фон
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  style: TextStyle(color: Colors.white), // текст в полях белого цвета
                  decoration: InputDecoration(
                    labelText: 'Логин',
                    labelStyle: TextStyle(color: Colors.grey), // серый
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // белый
                    ),
                    fillColor: Colors.white, // цвет заливки
                    filled: true, // заливаемый фон
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  style: TextStyle(color: Colors.white), // текст в полях белого цвета
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    labelStyle: TextStyle(color: Colors.grey), // серый
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // белый
                    ),
                    fillColor: Colors.white, // цвет заливки
                    filled: true, // заливаемый фон
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 16),
                TextField(
                  style: TextStyle(color: Colors.white), // текст в полях белого цвета
                  decoration: InputDecoration(
                    labelText: 'Подтвердить пароль',
                    labelStyle: TextStyle(color: Colors.grey), // серый
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // белый
                    ),
                    fillColor: Colors.white, // цвет заливки
                    filled: true, // заливаемый фон
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    // Добавить обработчик для кнопки регистрации
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow, // желтый
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    child: Text('Зарегистрироваться', style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'cart.dart';

class CartPage extends StatelessWidget {
  final List<CartItem> cartItems;

  CartPage({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    double totalCost = Cart.getTotalPrice();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            final item = cartItems[index];
            return ListTile(
              leading: Image.network(item.product.imageUrl),
              title: Text(item.product.name),
              subtitle: Text('${item.product.price} ₽ x ${item.quantity}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${item.product.price * item.quantity} ₽'),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Отображение диалогового окна для выбора количества удаляемых продуктов
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          int quantityToRemove = 1;

                          return AlertDialog(
                            title: const Text('Удалить продукт'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text('Выберите количество для удаления:'),
                               const  SizedBox(height: 16),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  initialValue: '1',
                                  onChanged: (value) {
                                    quantityToRemove = int.tryParse(value) ?? 1;
                                  },
                                ),
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  // Удаление выбранного количества продуктов
                                  Cart.removeQuantity(item.product, quantityToRemove);
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Удалить'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    child: const Text('Удалить'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                // Удаление всех продуктов из корзины
                Cart.clearCart();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Цвет кнопки удаления всех продуктов
              ),
              child: const Text('Удалить все', style: TextStyle(fontSize: 16)),
            ),
            Text(
              'Общая сумма: $totalCost ₽',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                // Действия при нажатии на кнопку "Оплатить"
              },
              style: ElevatedButton.styleFrom(
               primary: Colors.grey,
              ),
              child: const Text('Оплатить', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

import 'product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class Cart {
  static List<CartItem> _cartItems = [];

  static List<CartItem> get cartItems => _cartItems;

  static void addItem(Product product) {
    bool found = false;
    for (var item in _cartItems) {
      if (item.product == product) {
        item.quantity++;
        found = true;
        break;
      }
    }
    if (!found) {
      _cartItems.add(CartItem(product: product));
    }
  }

  static void removeItem(Product product) {
    for (var item in _cartItems) {
      if (item.product == product) {
        if (item.quantity > 1) {
          item.quantity--;
        } else {
          _cartItems.remove(item);
        }
        break;
      }
    }
  }

  static void removeQuantity(Product product, int quantityToRemove) {
    for (var item in _cartItems) {
      if (item.product == product) {
        if (item.quantity > quantityToRemove) {
          item.quantity -= quantityToRemove;
        } else {
          _cartItems.remove(item);
        }
        break;
      }
    }
  }

  static void clearCart() {
    _cartItems.clear();
  }

  static double getTotalPrice() {
    double total = 0;
    for (var item in _cartItems) {
      total += item.product.price * item.quantity;
    }
    return total;
  }
}

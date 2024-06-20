import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    // Gets the user data by calling the provided function fetchUserData()
    String userData = await fetchUserData();
    Map<String, dynamic> user = json.decode(userData);
    String userId = user['id'];

    // Gets the user orders by calling the provided function fetchUserOrders(id) which accepts one argument : ID of the user
    String userOrdersJson = await fetchUserOrders(userId);
    List<dynamic> userOrders = json.decode(userOrdersJson);

    double total = 0.00;

    // For each product in users orders
    for (String product in userOrders) {
      // Gets the products price by calling the provided function fetchProductPrice(product) which accepts one argument : product name
      String productPriceJson = await fetchProductPrice(product);
      double productPrice = double.parse(json.decode(productPriceJson).toString());
      
      total += productPrice;
    }

    return total;
  } catch (error) {
    return -1.0;
  }
}
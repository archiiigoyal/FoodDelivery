import 'package:flutter/material.dart';
import 'package:foodtemp/models/cart_item.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy potato patty with melted cheddar , lettuce , tomato, and hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 280,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra chesse", price: 30),
        Addon(name: "Extra pickles", price: 15),
        Addon(name: "Extra lettuce", price: 15),
      ],
    ),

    Food(
      name: " BBQ Burger",
      description: "A juicy panner patty and grilled charred  with BBQ hues .",
      imagePath: "lib/images/burgers/bbq_burger1.jpeg",
      price: 200,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra chesse", price: 30),
        Addon(name: "Extra BBQ sauce", price: 20),
        Addon(name: "Extra lettuce", price: 15),
      ],
    ),

    Food(
      name: "Bluemoon Burger",
      description:
          "A juicy, perfectly grilled beef patty topped with a generous layer of crumbled blue cheese",
      imagePath: "lib/images/burgers/bluemoon_burger.jpeg",
      price: 320,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra blue cheese", price: 40),
        Addon(name: "Crispy onion rings", price: 30),
        Addon(name: "Spicy jalapenos", price: 20),
      ],
    ),

    Food(
      name: "Aloha Burger",
      description:
          "It is  juicy patty topped with a sweet and savory slice of grilled pineapple, and teriyaki sauce, all served on a toasted bun",
      imagePath: "lib/images/burgers/aloha_burger.jpeg",
      price: 400,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra pineapple", price: 25),
        Addon(name: "Extra teriyaki sauce", price: 15),
        Addon(name: "Extra lettuce", price: 15),
      ],
    ),

    Food(
      name: "Vege Burger",
      description:
          "A wholesome, plant-based patty made with fresh vegetables, grains, and spices, topped with lettuce, tomato, cucumber, and a tangy vegan mayo. Served on a soft, toasted whole-grain bun.",
      imagePath: "lib/images/burgers/vege_burger.jpeg",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra avocado", price: 40),
        Addon(name: "Vegan cheese", price: 30),
        Addon(name: "Spicy sauce", price: 20),
      ],
    ),

    //salads
    Food(
      name: "Asian Sesame Salad",
      description:
          "A refreshing mix of crisp cabbage, carrots, cucumber, and bell peppers, topped with toasted sesame seeds, green onions, and cilantro. ",
      imagePath: "lib/images/salads/asiansemase_salad.jpeg",
      price: 180,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 70),
        Addon(name: "Panner", price: 50),
        Addon(name: "Spicy sesame dressing", price: 30),
      ],
    ),

    Food(
      name: "Caesar Salad",
      description:
          "A classic Caesar salad featuring crisp romaine lettuce, and shaved Parmesan cheese, all tossed in a rich, creamy Caesar dressing made with garlic,  Dijon mustard, and a touch of lemon. ",
      imagePath: "lib/images/salads/caesar_salad.jpeg",
      price: 200,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 70),
        Addon(name: "Panner Bits", price: 40),
        Addon(name: "Extra Parmesan", price: 30),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A fresh and vibrant mix of juicy tomatoes, cucumbers, red onions, Kalamata olives, and creamy feta cheese, all drizzled with extra virgin olive oil and sprinkled with oregano.",
      imagePath: "lib/images/salads/greek_salad.jpeg",
      price: 180,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 70),
        Addon(name: "Falafel", price: 50),
        Addon(name: "Tzatziki sauce", price: 30),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "A nutritious and colorful salad featuring fluffy quinoa, mixed with vibrant vegetables like bell peppers, cherry tomatoes, cucumbers, and red onions. ",
      imagePath: "lib/images/salads/quino_salad.jpeg",
      price: 210,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 70),
        Addon(name: "Avocado", price: 40),
        Addon(name: "Feta cheese", price: 30),
      ],
    ),
    Food(
      name: "Southwest Salad",
      description:
          "A bold and flavorful salad featuring crisp romaine lettuce, black beans, corn, cherry tomatoes, avocado, and red onion, all tossed in a tangy lime-cilantro dressing.",
      imagePath: "lib/images/salads/sothwest_salad.jpeg",
      price: 220,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Panner", price: 70),
        Addon(name: "Spicy salsa", price: 30),
        Addon(name: "Jalapeños", price: 20),
      ],
    ),

    //sides
    Food(
      name: "Garlic Bread",
      description:
          "Warm, toasted baguette slices generously spread with a buttery garlic mixture, topped with fresh parsley and a hint of Parmesan cheese.",
      imagePath: "lib/images/sides/garlic_bread.jpeg",
      price: 120,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra garlic butter", price: 20),
        Addon(name: "Cheese topping", price: 30),
      ],
    ),

    Food(
      name: "Loaded Fries",
      description:
          "Crispy golden fries smothered in melted cheese, topped with crispy bacon bits, green onions, and a drizzle of creamy ranch dressing.",
      imagePath: "lib/images/sides/loaded_fries_sides.jpeg",
      price: 180,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 40),
        Addon(name: "Jalapeños", price: 20),
        Addon(name: "Chili", price: 50),
      ],
    ),

    Food(
      name: "Mac & Cheese",
      description:
          "Creamy, rich elbow macaroni smothered in a velvety blend of melted cheddar and mozzarella cheeses. Finished with a crispy, golden breadcrumb topping.",
      imagePath: "lib/images/sides/mac_and_cheese.jpeg",
      price: 150,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Panner bits", price: 40),
        Addon(name: "Extra cheese", price: 30),
        Addon(name: "Spicy jalapeños", price: 20),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Crispy, golden-brown battered onion rings, perfectly seasoned and fried to perfection. Served hot and crunchy, with a side of tangy dipping sauce.",
      imagePath: "lib/images/sides/onionring_side1.jpeg",
      price: 120,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy dipping sauce", price: 20),
        Addon(name: "Extra onion rings", price: 50),
      ],
    ),
    Food(
      name: "Sweet Potato Sandwich",
      description:
          "A hearty sandwich featuring roasted sweet potato slices, paired with fresh greens, avocado, and a tangy mustard or aioli spread, all nestled between two slices of toasted whole-grain bread. ",
      imagePath: "lib/images/sides/sweet_potato_sand.jpeg",
      price: 220,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Panner", price: 70),
        Addon(name: "Vegan cheese", price: 30),
        Addon(name: "Extra avocado", price: 40),
      ],
    ),

    //drinkss

    Food(
      name: "Blue Lagoon Cocktail",
      description:
          "A refreshing and vibrant cocktail made with a blend of blue curaçao, vodka, and lemonade, garnished with a slice of lemon and a cherry. The perfect tropical drink with a sweet, citrusy twist and a striking blue color.",
      imagePath: "lib/images/drinks/blue_lagoon.jpeg",
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra vodka", price: 50),
        Addon(name: "Lime wedge", price: 20),
        Addon(name: "Tropical fruit garnish", price: 30),
      ],
    ),
    Food(
      name: "Red Sunrise Cocktail",
      description:
          "A vibrant, eye-catching cocktail made with fresh orange juice, grenadine, and a splash of vodka, creating a beautiful layered effect with a sweet, citrusy flavor. Served tall with a cherry garnish, this drink is as delightful to look at as it is to sip.",
      imagePath:
          "lib/images/drinks/red_sunrise.jpeg",
      price: 220,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra vodka", price: 50),
        Addon(name: "Lime wedge", price: 20),
        Addon(name: "Mint leaves", price: 10),
      ],
    ),
    Food(
      name: "Kombucha Drink",
      description:
          "A refreshing, effervescent fermented tea with a tangy, slightly sweet flavor. Packed with probiotics and natural flavors, this organic kombucha is made with a blend of green or black tea.",
      imagePath: "lib/images/drinks/kombucha.jpeg",
      price: 180,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra ginger", price: 20),
        Addon(name: "Fruit infusion", price: 30),
        Addon(name: "Ice cubes", price: 10),
      ],
    ),
    Food(
      name: "Long Island Iced Tea",
      description:
          "A bold and refreshing cocktail made with a mix of vodka, rum, gin, tequila, triple sec, and a splash of sour mix and cola. Despite its name, it’s not made with tea, but offers a perfectly balanced blend.",
      imagePath:
          "lib/images/drinks/iced_tea.jpeg",
      price: 300,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra vodka", price: 50),
        Addon(name: "Lime wedge", price: 20),
        Addon(name: "Mint leaves", price: 10),
      ],
    ),
    Food(
      name: "Cosmopolitan Cocktail",
      description:
          "A stylish and sophisticated cocktail made with vodka, triple sec, cranberry juice, and a splash of fresh lime juice. Served in a sleek martini glass with a twist of lime.",
      imagePath: "lib/images/drinks/cosmo_drink.jpeg",
      price: 280,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra vodka", price: 50),
        Addon(name: "Lime wedge", price: 20),
        Addon(name: "Mint leaves", price: 10),
      ],
    ),

    //DESSERTS

    Food(
      name: "Chocolate Ice Cream with Wafers & Chocolate",
      description:
          "A creamy, rich chocolate ice cream paired with crunchy wafer pieces and drizzled with decadent chocolate sauce. This indulgent treat combines the smoothness of premium chocolate ice cream with the satisfying crunch of wafers.",
      imagePath: "lib/images/desserts/images.jpeg",
      price: 180,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate sauce", price: 30),
        Addon(name: "Whipped cream", price: 20),
        Addon(name: "Chopped nuts", price: 20),
      ],
    ),
    Food(
      name: "Chocolate Cheesecake",
      description:
          "A decadent and creamy cheesecake with a rich chocolate base, topped with a velvety layer of smooth chocolate ganache. This indulgent dessert features a buttery graham cracker crust and a perfect balance of sweet, rich chocolate.",
      imagePath: "lib/images/desserts/cheesecake.jpeg",
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped cream", price: 20),
        Addon(name: "Fresh berries", price: 30),
        Addon(name: "Extra chocolate drizzle", price: 40),
      ],
    ),

    Food(
      name: "Chocolate Walnut Cupcake",
      description:
          "A rich, moist chocolate cupcake made with the finest cocoa, studded with crunchy walnut pieces, and topped with a smooth chocolate frosting. The perfect combination of fudgy, nutty, and creamy.",
      imagePath: "lib/images/desserts/cupcake.jpeg",
      price: 120,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate frosting", price: 20),
        Addon(name: "Whipped cream", price: 15),
        Addon(name: "Chocolate chips", price: 10),
      ],
    ),

    Food(
      name: "Macarons",
      description:
          "Delicate, light, and crisp French macarons with a smooth, flavorful filling. These colorful treats come in a variety of flavors such as pistachio, raspberry, chocolate, and vanilla, all sandwiched between two airy almond meringue shells.",
      imagePath:
          "lib/images/desserts/macarons.jpeg",
      price: 150,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra raspberry filling", price: 30),
        Addon(name: "Choco-dipped macaron", price: 40),
        Addon(name: "Assorted box of 6", price: 80),
      ],
    ),
    Food(
      name: "Spaghetti Ice Cream",
      description:
          "A whimsical dessert that mimics a plate of spaghetti, made with vanilla ice cream 'noodles' topped with a strawberry sauce 'marinara' and a generous dusting of grated white chocolate 'Parmesan'. This playful treat is both fun to look at and deliciously sweet.",
      imagePath:
          "lib/images/desserts/spaghetti.jpeg",
      price: 220,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra strawberry sauce", price: 30),
        Addon(name: "Whipped cream", price: 20),
        Addon(name: "Chocolate shavings", price: 25),
      ],
    ),
  ];

//user cart
  final List<CartItem> _cart = [];

//delivery address(which user can change/update)
  String _deliveryAddress = 'IGDTUW, Kashmere Gate, Delhi';

  /*




 G E T T E R S




 */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*




 O P E A R T I O N S




 */

  //add to cart

  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;
      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

//update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*




 H E L P E R S




 */

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln();

    // format the date to include upto seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name}- ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Items: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double Price) {
    return "Rs ${Price.toStringAsFixed(2)}";
  }

  //format list of addons into string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(", ");
  }
}

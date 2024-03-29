class pizza{
  static List<String> sizes = <String>["Small", "Medium", "Large"];

  String size = sizes.elementAt(0);

  Map<String, bool> toppings = new Map<String, bool>();

  pizza(){
    toppings.putIfAbsent('Pepperoni', () => false);
    toppings.putIfAbsent('Sausage', () => false);
    toppings.putIfAbsent('Cheese', () => false);
    toppings.putIfAbsent('Pinapple', () => false);
    toppings.putIfAbsent('Onions', () => false);
    toppings.putIfAbsent('Mushrooms', () => false);
    toppings.putIfAbsent('Peppers', () => false);
    toppings.putIfAbsent('Pickles', () => false);
    toppings.putIfAbsent('Sweetcorn', () => false);
    toppings.putIfAbsent('Olives', () => false);
  }
}
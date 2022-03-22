import 'package:get/get.dart';
import 'package:screens_to_design_and_implement/models/item.dart';

class CartController extends GetxController {
  var _items = {}.obs;
  //var show = false;

  void addItem(Item item, int quantity) {
if (_items.containsKey(item) && quantity!=null ) {
      _items[item] =quantity;
    } else {
      _items[item] = 1;
    }
  }

  void addItemBag(Item item) {
    if (_items.containsKey(item)) {
      _items[item] += 1;
    } else {
      _items[item] = 1;
    }
  }

  get items => _items;

  void removeItem(Item item) {
    if (_items.containsKey(item) && _items[item] > 1) {
      _items[item] -= 1;
    }
  }

  void deleteItem(Item item) {
    _items.remove(item);
  }

  void Show(bool show) {
    show = !show;
  }

  get itemSubtotal =>
      _items.entries.map((item) => item.key.price * item.value).toList();

  get total => _items.entries
      .map((item) => item.key.price * item.value)
      .toList()
      .reduce((value, element) => value + element)
      .toString();
}

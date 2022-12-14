import 'package:asroo_uod/logic/controllers/cart_controller.dart';
import 'package:asroo_uod/logic/controllers/category_controller.dart';
import 'package:asroo_uod/logic/controllers/product_controller.dart';
import 'package:get/instance_manager.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.lazyPut(() => CartController());
    Get.put(CategoryController());
    // lazyPut انتظر شوي لاتفتح بسرعه
  }
}

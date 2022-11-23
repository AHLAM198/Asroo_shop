import 'package:asroo_uod/models/product_models.dart';
import 'package:http/http.dart' as http;
import 'package:asroo_uod/utils/my_string.dart';

//as -> استخدامه بشكل مختصر

class ProductServices {
  static Future<List<ProductModels>> getProduct() async {
    var response = await http.get(Uri.parse('$baseUrl/products'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productModelsFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}

//await انتظار بيانات 
//200 نتيجه صح 

//throw Exception -> اعمل لي خطا في هذا الاسم 

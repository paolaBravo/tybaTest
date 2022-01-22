import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tyba_test/core/error/exceptions.dart';
import 'package:tyba_test/restaurants/data/model/response_model.dart';

class RestaurantsDatasource {
  RestaurantsDatasource();
  Future<ResponseModel> getRestaurants(String city) async {
    final http.Client client = http.Client();

    final String url =
        'https://maps.googleapis.com/maps/api/place/textsearch/json?query=restaurants+$city&key=AIzaSyAWgZHcN508kog8oBt8EY_KXBbT5MEkls4';
    final response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var respBody = jsonDecode(response.body);
      return ResponseModel.fromJson(respBody);
    } else {
      throw ServerException(
          'No encontramos los restaurantes de tu ciudad, por favor intentalo nuevamente');
    }
  }
}

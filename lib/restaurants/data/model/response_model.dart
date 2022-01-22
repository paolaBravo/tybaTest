// To parse this JSON data, do
//
//     final responseModel = responseModelFromJson(jsonString);

import 'dart:convert';

ResponseModel responseModelFromJson(String str) =>
    ResponseModel.fromJson(json.decode(str));

String responseModelToJson(ResponseModel data) => json.encode(data.toJson());

class ResponseModel {
  ResponseModel({
    required this.results,
  });
  List<Result> results;

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result(
      {required this.businessStatus,
      required this.name,
      required this.rating,
      required this.types,
      required this.userRatingsTotal,
      required this.formattedAddress});

  String businessStatus;
  String formattedAddress;

  String name;
  double rating;
  List<String> types;
  int userRatingsTotal;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        businessStatus: json["business_status"],
        formattedAddress: json["formatted_address"],
        name: json["name"],
        rating: json["rating"].toDouble(),
        types: List<String>.from(json["types"].map((x) => x)),
        userRatingsTotal: json["user_ratings_total"],
      );

  Map<String, dynamic> toJson() => {
        "business_status": businessStatus,
        "formatted_address": formattedAddress,
        "name": name,
        "rating": rating,
        "types": List<dynamic>.from(types.map((x) => x)),
        "user_ratings_total": userRatingsTotal,
      };
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ServiceGeneralData {
  String name;
  String city;
  String mainImage;

  ServiceGeneralData(
      {required this.name, required this.city, required this.mainImage});
}

class WeddingRoom extends ServiceGeneralData {
  int numberOfPerson;
  String location;
  String description;

  WeddingRoom(
      {required super.name,
      required super.city,
      required this.numberOfPerson,
      required this.location,
      required super.mainImage,
      this.description = ""});

  factory WeddingRoom.fromJSON(data) {
    return WeddingRoom(
        name: data["name"],
        city: data["city"],
        numberOfPerson: data["numberOfPerson"],
        location: data["location"],
        mainImage: data["mainImage"],
        description: data["description"]);
  }
}

class TravelAgent extends ServiceGeneralData {
  String coverImage;
  String description;
  TravelAgent(
      {required super.name,
      required super.city,
      required super.mainImage,
      this.coverImage = "assets/iamges/hotel.PNG",
      this.description = ""});

  factory TravelAgent.fromJSON(data) {
    if (data["description"] == null)
      return TravelAgent(
          name: data["name"], city: data["city"], mainImage: data["mainImage"]);
    else
      return TravelAgent(
          name: data["name"],
          city: data["city"],
          mainImage: data["mainImage"],
          coverImage: data["coverImage"],
          description: data["description"]);
  }
}

class MustReviewedItemData extends ServiceGeneralData {
  String category;
  String review;
  String reviewedNumber;

  MustReviewedItemData(
      {required super.name,
      required super.city,
      required this.category,
      required this.review,
      required this.reviewedNumber,
      required super.mainImage});

  factory MustReviewedItemData.fromJSON(data) {
    return MustReviewedItemData(
        name: data["name"],
        city: data["city"],
        category: data["category"],
        review: data["review"],
        reviewedNumber: data["reviewedNumber"],
        mainImage: data["mainImage"]);
  }
}

class InstrumentisteData extends ServiceGeneralData {
  String personPerTeam;
  String price;
  String review;
  String description;
  List<String>? images;

  InstrumentisteData(
      {required super.name,
      required super.city,
      required this.personPerTeam,
      required this.price,
      required this.review,
      required this.description,
      required super.mainImage});

  factory InstrumentisteData.fromJSON(data) {
    return InstrumentisteData(
      name: data["name"],
      city: data["city"],
      personPerTeam: data["personPerTeam"],
      price: data["price"],
      mainImage: data["mainImage"],
      review: data["review"],
      description: data["description"],
    );
  }
}

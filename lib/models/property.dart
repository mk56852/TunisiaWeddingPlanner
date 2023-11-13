enum PropertyTypes { PRIVATE, AGENCY }

class Property {
  String name;
  String description;
  String address;
  String price;
  String imagePath;
  PropertyTypes propertyTypes;
  bool liked;

  Property({
    required this.name,
    required this.description,
    required this.address,
    required this.price,
    required this.imagePath,
    required this.liked,
    required this.propertyTypes,
  });
}

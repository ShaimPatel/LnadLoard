class FeaturedPropertiesModel {
  bool success;
  String message;
  Data data;

  FeaturedPropertiesModel({
    required this.success,
    required this.message,
    required this.data,
  });
}

class Data {
  List<Result> results;
  Pagination pagination;

  Data({
    required this.results,
    required this.pagination,
  });
}

class Pagination {
  int totalPages;

  Pagination({
    required this.totalPages,
  });
}

class Result {
  String id;
  Tag tag;
  PropertyType propertyType;
  String slug;
  String name;
  Images images;
  String status;
  String category;
  int price;
  int bedrooms;
  int bathrooms;
  int reception;
  String zipcode;
  String city;
  String description;
  String address;
  List<String> features;
  NearestStation nearestStation;
  bool isLand;

  Result({
    required this.id,
    required this.tag,
    required this.propertyType,
    required this.slug,
    required this.name,
    required this.images,
    required this.status,
    required this.category,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.reception,
    required this.zipcode,
    required this.city,
    required this.description,
    required this.address,
    required this.features,
    required this.nearestStation,
    required this.isLand,
  });
}

class Images {
  List<String> all;
  int imagesDefault;

  Images({
    required this.all,
    required this.imagesDefault,
  });
}

class NearestStation {
  String name;
  String distance;

  NearestStation({
    required this.name,
    required this.distance,
  });
}

class PropertyType {
  String id;
  String name;

  PropertyType({
    required this.id,
    required this.name,
  });
}

class Tag {
  String id;
  String name;
  String color;

  Tag({
    required this.id,
    required this.name,
    required this.color,
  });
}

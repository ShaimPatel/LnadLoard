class PropertiesDataModel {
  bool? success;
  String? message;
  Data? data;

  PropertiesDataModel({this.success, this.message, this.data});

  PropertiesDataModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Results>? results;
  Pagination? pagination;

  Data({this.results, this.pagination});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    return data;
  }
}

class Results {
  String? id;
  Tag? tag;
  PropertyType? propertyType;
  String? slug;
  String? name;
  Images? images;
  String? status;
  String? category;
  int? price;
  int? bedrooms;
  int? bathrooms;
  int? reception;
  String? zipcode;
  String? city;
  String? description;
  String? address;
  List<String>? features;
  NearestStation? nearestStation;
  bool? isLand;

  Results(
      {this.id,
      this.tag,
      this.propertyType,
      this.slug,
      this.name,
      this.images,
      this.status,
      this.category,
      this.price,
      this.bedrooms,
      this.bathrooms,
      this.reception,
      this.zipcode,
      this.city,
      this.description,
      this.address,
      this.features,
      this.nearestStation,
      this.isLand});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tag = json['tag'] != null ? Tag.fromJson(json['tag']) : null;
    propertyType = json['property_type'] != null
        ? PropertyType.fromJson(json['property_type'])
        : null;
    slug = json['slug'];
    name = json['name'];
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
    status = json['status'];
    category = json['category'];
    price = json['price'];
    bedrooms = json['bedrooms'];
    bathrooms = json['bathrooms'];
    reception = json['reception'];
    zipcode = json['zipcode'];
    city = json['city'];
    description = json['description'];
    address = json['address'];
    features = json['features'].cast<String>();
    nearestStation = json['nearest_station'] != null
        ? NearestStation.fromJson(json['nearest_station'])
        : null;
    isLand = json['is_land'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (tag != null) {
      data['tag'] = tag!.toJson();
    }
    if (propertyType != null) {
      data['property_type'] = propertyType!.toJson();
    }
    data['slug'] = slug;
    data['name'] = name;
    if (images != null) {
      data['images'] = images!.toJson();
    }
    data['status'] = status;
    data['category'] = category;
    data['price'] = price;
    data['bedrooms'] = bedrooms;
    data['bathrooms'] = bathrooms;
    data['reception'] = reception;
    data['zipcode'] = zipcode;
    data['city'] = city;
    data['description'] = description;
    data['address'] = address;
    data['features'] = features;
    if (nearestStation != null) {
      data['nearest_station'] = nearestStation!.toJson();
    }
    data['is_land'] = isLand;
    return data;
  }
}

class Tag {
  String? id;
  String? name;
  String? color;

  Tag({this.id, this.name, this.color});

  Tag.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['color'] = color;
    return data;
  }
}

class PropertyType {
  String? id;
  String? name;

  PropertyType({this.id, this.name});

  PropertyType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Images {
  List<String>? all;
  int? defaultImage;

  Images({this.all, this.defaultImage});

  Images.fromJson(Map<String, dynamic> json) {
    all = json['all'].cast<String>();
    defaultImage = json['default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['all'] = all;
    data['default'] = defaultImage;
    return data;
  }
}

class NearestStation {
  String? name;
  String? distance;

  NearestStation({this.name, this.distance});

  NearestStation.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['distance'] = distance;
    return data;
  }
}

class Pagination {
  int? totalPages;

  Pagination({this.totalPages});

  Pagination.fromJson(Map<String, dynamic> json) {
    totalPages = json['total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_pages'] = totalPages;
    return data;
  }
}

// api/model/response/brand/brands_response.dart
class BrandsResponse {
  num? results;
  PaginationData? metadata;
  List<BrandDto>? data;

  BrandsResponse({this.results, this.metadata, this.data});

  //from json
  BrandsResponse.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    metadata = json['metadata'] != null
        ? new PaginationData.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <BrandDto>[];
      json['data'].forEach((v) {
        data!.add(new BrandDto.fromJson(v));
      });
    }
  }

  //to json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = this.results;
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

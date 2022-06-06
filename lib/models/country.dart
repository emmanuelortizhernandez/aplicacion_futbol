import 'dart:convert';

class Country {
  String? country;
  String code;
  String flag;

  Country({required this.country, required this.code, required this.flag});
  
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      country: json['country'], 
      code: json['code'],
      flag: json['flag'],
      );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['code'] = this.code;
    data['flag'] = this.flag;
    return data;
  }
}

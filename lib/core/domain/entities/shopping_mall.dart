import 'dart:convert';

import 'package:equatable/equatable.dart';

class ShoppingMall extends Equatable {
  final String? id;
  final String? name;
  final String? avatar;
  final String? address;
  final String? latitude;
  final String? longitude;
  final String? description;
  ShoppingMall({
    this.id,
     this.name,
     this.avatar,
     this.address,
     this.latitude,
     this.longitude,
     this.description,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      avatar,
      address,
      latitude,
      longitude,
      description,
    ];
  }

  

  ShoppingMall copyWith({
    String? id,
    String? name,
    String? avatar,
    String? address,
    String? latitude,
    String? longitude,
    String? description,
  }) {
    return ShoppingMall(
      id: id ?? this.id,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      address: address ?? this.address,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'avatar': avatar,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
      'description': description,
    };
  }

  factory ShoppingMall.fromMap(Map<String, dynamic> map) {
    return ShoppingMall(
      id: map['id'],
      name: map['name'],
      avatar: map['avatar'],
      address: map['address'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ShoppingMall.fromJson(String source) => ShoppingMall.fromMap(json.decode(source));

  @override
  bool get stringify => true;
}

// To parse this JSON data, do
//
//     final otpResponseModel = otpResponseModelFromJson(jsonString);

import 'dart:convert';

OtpResponseModel otpResponseModelFromJson(String str) =>
    OtpResponseModel.fromJson(json.decode(str));

String otpResponseModelToJson(OtpResponseModel data) =>
    json.encode(data.toJson());

class OtpResponseModel {
  bool success;
  bool? verified;
  String? token;
  User? user;

  OtpResponseModel({
    required this.success,
    this.token,
    this.user,
    this.verified,
  });

  factory OtpResponseModel.fromJson(Map<String, dynamic> json) =>
      OtpResponseModel(
        success: json["success"],
        token: json["token"],
        user: json["user"] != null ? User.fromJson(json["user"]) : null,
        verified: json["verified"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "token": token,
        "user": user?.toJson(),
      };
}

class User {
  String id;
  String firstName;
  String lastName;
  String username;
  String email;
  String phone;
  List<dynamic> pendingRequests;
  List<dynamic> friends;
  List<dynamic> blockedUsers;
  List<dynamic> savedPosts;
  bool isBlocked;
  bool isVerified;
  List<dynamic> pendingSentRequest;
  bool elite;
  String subscriptionStatus;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phone,
    required this.pendingRequests,
    required this.friends,
    required this.blockedUsers,
    required this.savedPosts,
    required this.isBlocked,
    required this.isVerified,
    required this.pendingSentRequest,
    required this.elite,
    required this.subscriptionStatus,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        pendingRequests:
            List<dynamic>.from(json["pendingRequests"].map((x) => x)),
        friends: List<dynamic>.from(json["friends"].map((x) => x)),
        blockedUsers: List<dynamic>.from(json["blockedUsers"].map((x) => x)),
        savedPosts: List<dynamic>.from(json["savedPosts"].map((x) => x)),
        isBlocked: json["isBlocked"],
        isVerified: json["isVerified"],
        pendingSentRequest:
            List<dynamic>.from(json["pendingSentRequest"].map((x) => x)),
        elite: json["elite"],
        subscriptionStatus: json["subscriptionStatus"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "email": email,
        "phone": phone,
        "pendingRequests": List<dynamic>.from(pendingRequests.map((x) => x)),
        "friends": List<dynamic>.from(friends.map((x) => x)),
        "blockedUsers": List<dynamic>.from(blockedUsers.map((x) => x)),
        "savedPosts": List<dynamic>.from(savedPosts.map((x) => x)),
        "isBlocked": isBlocked,
        "isVerified": isVerified,
        "pendingSentRequest":
            List<dynamic>.from(pendingSentRequest.map((x) => x)),
        "elite": elite,
        "subscriptionStatus": subscriptionStatus,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}

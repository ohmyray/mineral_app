// 注册请求
class UserRegisterRequestEntity {
  String loginName;
  String password;
  String userPhone;

  UserRegisterRequestEntity({
    this.loginName,
    this.password,
    this.userPhone,
  });

  factory UserRegisterRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserRegisterRequestEntity(
        loginName: json["loginName"],
        password: json["password"],
        userPhone: json["userPhone"],
      );

  Map<String, dynamic> toJson() => {
        "loginName": loginName,
        "password": password,
        "userPhone": userPhone,
      };
}

class UserRegisterResponseEntity {
  int code;
  String message;
  dynamic result;

  UserRegisterResponseEntity({
    this.code,
    this.message,
    this.result,
  });

  factory UserRegisterResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserRegisterResponseEntity(
        code: json["code"],
        message: json["message"],
        result: json["result"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "result": result,
      };
}

// 登录请求
class UserLoginRequestEntity {
  String loginName;
  String password;
  String userDevice;

  UserLoginRequestEntity({
    this.loginName,
    this.password,
    this.userDevice,
  });

  factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginRequestEntity(
        loginName: json["loginName"],
        password: json["password"],
        userDevice: json["userDevice"],
      );

  Map<String, dynamic> toJson() => {
        "loginName": loginName,
        "password": password,
        "userDevice": userDevice,
      };
}

// 登录返回
class UserLoginResponseEntity {
  int code;
  String message;
  dynamic result;

  UserLoginResponseEntity({
    this.code,
    this.message,
    this.result,
  });

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        code: json["code"],
        message: json["message"],
        result: json["result"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "result": result,
      };
}

// 用户初始化
class UserInitRequestEntity {
  String loginName;
  String password;
  String userDevice;

  UserInitRequestEntity({
    this.loginName,
    this.password,
    this.userDevice,
  });

  factory UserInitRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserInitRequestEntity(
        loginName: json["loginName"],
        password: json["password"],
        userDevice: json["userDevice"],
      );

  Map<String, dynamic> toJson() => {
        "loginName": loginName,
        "password": password,
        "userDevice": userDevice,
      };
}

class UserInitResponseEntity {
  int code;
  String message;
  dynamic result;

  UserInitResponseEntity({
    this.code,
    this.message,
    this.result,
  });

  factory UserInitResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserInitResponseEntity(
        code: json["code"],
        message: json["message"],
        result: json["result"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "result": result,
      };
}

class UserLocationResponseEntity {
  int code;
  String message;
  dynamic result;

  UserLocationResponseEntity({
    this.code,
    this.message,
    this.result,
  });

  factory UserLocationResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLocationResponseEntity(
        code: json["code"],
        message: json["message"],
        result: json["result"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "result": result,
      };
}

class UserLocationRequestEntity {
  num lat;
  num lng;
  num time;
  String userId;

  UserLocationRequestEntity({this.lat, this.lng, this.time, this.userId});

  // factory UserLocationRequestEntity.fromJson(Map<String, dynamic> json) =>
  //     UserLocationRequestEntity(
  //       lat: json["lat"],
  //       lng: json["lng"],
  //       time: DateTime.parse(json['time']),
  //       userId: json["userId"],
  //     );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
        "time": time,
        "userId": userId,
      };
}

//
// class UserModel {
//   String? fname;
//   String? secname;
//   String? email;
//   String? password;
//   String? phone;
//   String? image;
//   String? key;
//
//   UserModel(
//       {this.email, this.password, this.fname,this.secname ,this.phone, this.image, this.key});
//
//   factory UserModel.fromJson(DocumentSnapshot snapShot) {
//     return UserModel(
//         email: snapShot['email'],
//         secname: snapShot['secname'],
//         password: snapShot['password'],
//         phone: snapShot['phone'],
//         fname: snapShot['fname'],
//         image: snapShot["image"],
//         key: snapShot.id);
//   }
//
//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map['fname'] = fname;
//     map['secname'] = secname;
//     map['email'] = email;
//     map['image'] = image;
//     map['password'] = password;
//     map['phone'] = phone;
//     return map;
//   }
// }

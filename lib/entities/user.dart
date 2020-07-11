import 'package:simple_form_flutter/entities/address.dart';

class User {
  String name;
  String email;
  String cpf;
  Address address;

  User({this.name, this.email, this.cpf, this.address});
}

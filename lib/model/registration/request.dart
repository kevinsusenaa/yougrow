
import 'dart:io';

class RegistrationRequest{
  String? name;
  String? username;
  String? email;
  String? password;
  String? birthDate;
  String? gender;
  String? phone;
  String? address;
  String? holyBaptismDate;
  String? holyBaptismCongregation;
  String? holySealingDate;
  String? holySealingCongregation;
  String? confirmationDate;
  String? confirmationCongregation;
  String? activeCongregation;
  File? file;

  RegistrationRequest({
      this.name,
      this.username,
      this.email,
      this.password,
      this.birthDate,
      this.gender,
      this.phone,
      this.address,
      this.holyBaptismDate,
      this.holyBaptismCongregation,
      this.holySealingDate,
      this.holySealingCongregation,
      this.confirmationDate,
      this.confirmationCongregation,
      this.activeCongregation,
      this.file});
}
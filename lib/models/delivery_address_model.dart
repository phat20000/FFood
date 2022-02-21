class DeliveryAddressModel{
  String firstname;
  String lastname;
  String mobileNo;
  String street;
  String city;
  String addressType;

  DeliveryAddressModel(
  {
    this.addressType,
    this.city,
    this.firstname,
    this.lastname,
    this.mobileNo,
    this.street
}
      );
}
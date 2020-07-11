class Address {
  String zipCode;
  String publicPlace;
  String city;
  String country;
  String neighborhood;
  String number;
  String state;

  Address(
      {this.zipCode,
      this.publicPlace,
      this.city,
      this.country,
      this.neighborhood,
      this.number,
      this.state});

  @override
  String toString() {
    return 'Rua ${publicPlace}, ${number}, Bairro ${neighborhood}, ${city} - ${state},${country}';
  }
}

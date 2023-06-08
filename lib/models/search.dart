class Search {
  String productName;
  String shipmentNumber;
  String sendingLocation;
  String receivingLocation;

  Search({
    required this.productName,
    required this.shipmentNumber,
    required this.sendingLocation,
    required this.receivingLocation,
  });
}

List<Search> searchList = [
  Search(
    productName: 'Summer linen jacket',
    shipmentNumber: '#NEJ20089934122231',
    sendingLocation: 'Barcelona',
    receivingLocation: 'Paris',
  ),
  Search(
    productName: 'Tapered-fit jeans AW',
    shipmentNumber: '#GBV200899300521210',
    sendingLocation: 'Italy',
    receivingLocation: 'Rwanda',
  ),
  Search(
    productName: 'Macbook pro M2',
    shipmentNumber: '#SFV20089900522545',
    sendingLocation: 'Paris',
    receivingLocation: 'Monaco',
  ),
  Search(
    productName: 'Fendi hand bag',
    shipmentNumber: '#NEJ20089934094877',
    sendingLocation: 'Kenya',
    receivingLocation: 'Germany',
  ),
  Search(
    productName: 'Corporate suit case',
    shipmentNumber: '#NEJ20089934456378',
    sendingLocation: 'Hong kong',
    receivingLocation: 'India',
  ),
  Search(
    productName: 'Nike jordan boots',
    shipmentNumber: '#NEJ20089934309086',
    sendingLocation: 'Singapore',
    receivingLocation: 'Canada',
  ),
];

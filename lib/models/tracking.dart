class Tracking {
  String shipmentNumber;
  String shipImage;
  String sender;
  String time;
  String receiver;
  String status;

  Tracking({
    required this.shipmentNumber,
    required this.shipImage,
    required this.sender,
    required this.time,
    required this.receiver,
    required this.status,
  });
}

List<Tracking> trackers = [
  Tracking(
    shipmentNumber: 'NEJ20089934122231',
    shipImage: 'assets/move_logo.png',
    sender: 'Atlanta, 5243',
    time: '2 days - 3 days',
    receiver: 'Chicago, 6342',
    status: 'Waiting to collect',
  ),
  Tracking(
    shipmentNumber: 'GBV200899300521210',
    shipImage: 'assets/move_logo.png',
    sender: 'Los Angeles, 3334',
    time: '2 days - 3 days',
    receiver: 'Wisconsin, 8908',
    status: 'Waiting to collect',
  ),
  Tracking(
    shipmentNumber: 'SFV20089900522545',
    shipImage: 'assets/move_logo.png',
    sender: 'San Francisco, 7890',
    time: '2 days - 3 days',
    receiver: 'Miami, 3409',
    status: 'Waiting to collect',
  ),
  Tracking(
    shipmentNumber: 'TUJ20089978322109',
    shipImage: 'assets/move_logo.png',
    sender: 'Toronto, 9202',
    time: '2 days - 3 days',
    receiver: 'New York, 6638',
    status: 'Waiting to collect',
  ),
  Tracking(
    shipmentNumber: 'OPJ20067834122908',
    shipImage: 'assets/move_logo.png',
    sender: 'Boston, 5362',
    time: '2 days - 3 days',
    receiver: 'Atlanta, 9827',
    status: 'Waiting to collect',
  ),
  Tracking(
    shipmentNumber: 'UKJ20045393822648',
    shipImage: 'assets/move_logo.png',
    sender: 'Detroit, 7589',
    time: '2 days - 3 days',
    receiver: 'Alabama, 8902',
    status: 'Waiting to collect',
  ),
];

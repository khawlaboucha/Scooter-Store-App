class Scooter {
  String name;
  String imageUrl;
  Scooter({
    required this.name,
    required this.imageUrl,
  });
}

List<Scooter> listScooter = [
  Scooter(
    name: 'Fold in 1 second',
    imageUrl: 'assets/image2.png',
  ),
  Scooter(
    name: 'Up to 190 cm',
    imageUrl: 'assets/image3.png',
  ),
  Scooter(
    name: 'Front Tyre',
    imageUrl: 'assets/image4.png',
  )
];
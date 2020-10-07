class CarousalItem {
  String imageUrl;
  String category;
  String location;
  String description;
  String adName;

  CarousalItem({
    this.imageUrl,
    this.category,
    this.location,
    this.description,
    this.adName,
  });
}

List<CarousalItem> carousalItem = [
  CarousalItem(
    imageUrl: 'assets/img/img1.jpg',
    category: 'Mobile Phones',
    location: 'Malabe',
    description: 'Hurry up. Limited time offer. Purchase your first iPhone',
    adName: "iPhone X",
  ),
  CarousalItem(
    imageUrl: 'assets/img/img2.jpg',
    category: 'Cloths',
    location: 'Rathnapura',
    description: 'Sale. This is fully made of Cotton. Grab your one.',
    adName: "Lady Jewellery",
  ),
  CarousalItem(
    imageUrl: 'assets/img/img3.jpg',
    category: 'Vehicle Spare Parts',
    location: 'Homagama',
    description:
        'Get the best cars from Japan. Be a owner of a Toyota vehicle.',
    adName: "Toyota Corolla 121",
  ),
  CarousalItem(
    imageUrl: 'assets/img/img4.jpg',
    category: 'Bikes',
    location: 'Galle',
    description: 'Why you wait. Buy a CBR and show off your talent. Be a guy.',
    adName: "Honda CBR",
  ),
  CarousalItem(
    imageUrl: 'assets/img/img5.jpg',
    category: 'Chairs',
    location: 'Nugegoda',
    description: 'Best sofas in the market. 2 year warrenty available.',
    adName: "Damro Sofa",
  ),
];

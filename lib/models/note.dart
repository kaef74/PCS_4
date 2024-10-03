class Figure {
  final String name;
  final String description;
  final String imageUrl;
  final int price;
  final String brand;
  final String series;
  final String material;

  Figure({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.brand,
    required this.series,
    required this.material,
  });
}

List<Figure> figures = [
  Figure(
    name: 'Funko Pop! Iron Man',
    description: 'Фигурка Железного Человека из серии Marvel.',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-0/c350/6634495836.jpg',
    price: 1200,
    brand: 'Funko',
    series: 'Marvel',
    material: 'Винил',
  ),
  Figure(
    name: 'Funko Pop! Harry Potter',
    description: 'Гарри Поттер с волшебной палочкой.',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-r/wc1000/6089402787.jpg',
    price: 1300,
    brand: 'Funko',
    series: 'Harry Potter',
    material: 'Винил',
  ),
  Figure(
    name: 'Funko Pop! Batman',
    description: 'Бэтмен в классическом черно-сером костюме.',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-e/wc1000/6053273750.jpg',
    price: 1100,
    brand: 'Funko',
    series: 'DC Comics',
    material: 'Винил',
  ),
  Figure(
    name: 'Funko Pop! Baby Yoda',
    description: 'Малыш Йода из серии Звёздные Войны.',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-1-8/wc1000/7038762956.jpg',
    price: 1400,
    brand: 'Funko',
    series: 'Star Wars',
    material: 'Винил',
  ),
  Figure(
    name: 'Funko Pop! Spider-Man',
    description: 'Человек-Паук в красно-синем костюме.',
    imageUrl: 'https://ir.ozone.ru/s3/multimedia-1-x/wc1000/7139799861.jpg',
    price: 1250,
    brand: 'Funko',
    series: 'Marvel',
    material: 'Винил',
  ),
];

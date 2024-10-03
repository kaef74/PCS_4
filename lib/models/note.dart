class Sweet {
  final String name;
  final String description;
  final String imageUrl;
  final int price;
  final String brand;
  final String flavor;
  final String ingredients;

  Sweet({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.brand,
    required this.flavor,
    required this.ingredients,
  });
}

List<Sweet> sweets = [
  Sweet(
    name: 'Snickers',
    description: 'Шоколадный батончик с нугой, карамелью и орехами.',
    imageUrl: 'https://media.istockphoto.com/id/529240903/ru/фото/snickers-шоколада-изолированные-на-белом-фоне.jpg?s=612x612&w=0&k=20&c=ySk6UIkmYIdvVo2M8FkZCGipu99YoGYP2DgTlVsaGFI=',
    price: 50,
    brand: 'Mars',
    flavor: 'Шоколад с орехами',
    ingredients: 'Шоколад, карамель, арахис, нуга',
  ),
  Sweet(
    name: 'M&M\'s',
    description: 'Шоколадные драже в цветной глазури.',
    imageUrl: 'https://media.istockphoto.com/id/458135731/ru/фото/развернутый-m-ms-молочный-шоколад-конфеты.jpg?s=612x612&w=0&k=20&c=sQWEx_PiWZ5DoyhrMwzN7OcaeJ6vxC-3bf2DU8AiyGI=',
    price: 70,
    brand: 'Mars',
    flavor: 'Шоколад',
    ingredients: 'Шоколад, сахар, красители',
  ),
  Sweet(
    name: 'Toblerone',
    description: 'Швейцарский шоколад с медом и миндалем в виде треугольников.',
    imageUrl: 'https://media.istockphoto.com/id/539951468/ru/фото/шоколадный-toblerone.jpg?s=612x612&w=0&k=20&c=nGyfE4Uq-X5XrWza4zRN3E_0Cf1ifKSfS8JRa45lzwU=',
    price: 150,
    brand: 'Toblerone',
    flavor: 'Шоколад с миндалем и медом',
    ingredients: 'Шоколад, миндаль, мед',
  ),
  Sweet(
    name: 'KitKat',
    description: 'Шоколадный батончик с вафлями внутри.',
    imageUrl: 'https://media.istockphoto.com/id/458701489/ru/фото/kitkat-шоколадные-конфеты-бар-развернутый.jpg?s=612x612&w=0&k=20&c=ccwSWQVfy3kdg0tSOVNBTE7RRyT5CUl1ELA5dt0TReA=',
    price: 40,
    brand: 'Nestlé',
    flavor: 'Шоколад с вафлями',
    ingredients: 'Шоколад, вафли, сахар, молоко',
  ),
  Sweet(
    name: 'Ferrero Rocher',
    description: 'Шоколадные конфеты с орехом и начинкой из лесного ореха.',
    imageUrl: 'https://media.istockphoto.com/id/460156521/ru/фото/ферреро-рошер-рождественская-ёлка.jpg?s=612x612&w=0&k=20&c=1n4DG6dWh-uHohKkNYEchFRjUaHvUVn6zKD20V3xeFI=',
    price: 300,
    brand: 'Ferrero',
    flavor: 'Шоколад с орехом',
    ingredients: 'Шоколад, лесной орех, сахар, масло',
  ),
  Sweet(
    name: 'Twix',
    description: 'Шоколадный батончик с карамелью и печеньем.',
    imageUrl: 'https://media.istockphoto.com/id/458637643/ru/фото/twix-брусок-шоколада.jpg?s=612x612&w=0&k=20&c=3bg6beI4DZXtk7reRGo1e0e10ef4DKnOVJhXjTghvtU=',
    price: 50,
    brand: 'Mars',
    flavor: 'Шоколад с карамелью и печеньем',
    ingredients: 'Шоколад, карамель, печенье, сахар',
  ),
  Sweet(
    name: 'Milka',
    description: 'Шоколад с молочным вкусом и миндалем.',
    imageUrl: 'https://media.istockphoto.com/id/526733402/ru/фото/милка-шоколадные-батончики.jpg?s=612x612&w=0&k=20&c=dGTWz_axK8-Ea9LnKOiUWlKZ-TVMqgs5U67Ku8w9oo4=',
    price: 100,
    brand: 'Milka',
    flavor: 'Молочный шоколад с миндалем',
    ingredients: 'Шоколад, молоко, миндаль, сахар',
  ),
  Sweet(
    name: 'Ritter Sport',
    description: 'Немецкий шоколад с цельным фундуком.',
    imageUrl: 'https://media.istockphoto.com/id/507276506/ru/фото/вскоре-риттер-спорт-конфеты-мини.jpg?s=612x612&w=0&k=20&c=cB8SeSMDeOglwA2iR2GskPIslhOw2KefD73xjTondHU=',
    price: 120,
    brand: 'Ritter Sport',
    flavor: 'Шоколад с фундуком',
    ingredients: 'Шоколад, фундук, сахар, молоко',
  ),
  Sweet(
    name: 'Skittles',
    description: 'Жевательные конфеты с фруктовыми вкусами в яркой оболочке.',
    imageUrl: 'https://media.istockphoto.com/id/507068144/ru/фото/кегли-candy.jpg?s=612x612&w=0&k=20&c=AecgihKETfh_GqgVX1R70vSVel1heO1_LslS-wqScdU=',
    price: 60,
    brand: 'Mars',
    flavor: 'Фрукты',
    ingredients: 'Сахар, фруктовые ароматизаторы, красители',
  ),
  Sweet(
    name: 'Lindt',
    description: 'Швейцарский темный шоколад с насыщенным вкусом.',
    imageUrl: 'https://media.istockphoto.com/id/469433920/ru/фото/стек-линдор-конфет.jpg?s=612x612&w=0&k=20&c=lLV6M8_61SYkp6e6QKmS6aMLZY7IYTY6kq8iDqHRxqA=',
    price: 250,
    brand: 'Lindt',
    flavor: 'Темный шоколад',
    ingredients: 'Какао, сахар, ваниль',
  ),
];

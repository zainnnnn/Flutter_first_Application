class CatalogModel {
  static final products = [
    Items(
        id: 1,
        name: "iphone13",
        desc: "Apple latest generation",
        color: "#56C154 ",
        price: 12000,
        imgUrl:
            "https://www.att.com/idpassets/global/devices/phones/apple/apple-iphone-13-pro-max/Carousel/alpinegreen/AlpineGreen-1.png"),
    Items(
        id: 2,
        name: "Samsung S22 Ultra",
        desc: "Samsung latest generation",
        color: "#56C154 ",
        price: 13500,
        imgUrl:
            "https://cdn.shopify.com/s/files/1/0326/0291/4952/products/S22-Ultra-green_img1.jpg?v=1644570959")
  ];
}

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imgUrl;
  Items({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.imgUrl,
  });
}

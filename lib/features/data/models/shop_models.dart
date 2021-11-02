class Shop_Models {
  final String id;
  final String shop_name;
  final String address;
  final String shop_preview_video;
  final List<Product_Item> product_items; //for left page

  Shop_Models(
    this.id,
    this.shop_name,
    this.address,
    this.shop_preview_video,
    this.product_items,
  );
}

class Product_Item {
  final String name;
  final String product;
  final int price;

  Product_Item(this.name, this.product, this.price);
}

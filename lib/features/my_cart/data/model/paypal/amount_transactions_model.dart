class AmountTransactionsModel {
  AmountTransactionsModel({
      this.total, 
      this.currency, 
      this.details,});

  AmountTransactionsModel.fromJson(dynamic json) {
    total = json['total'];
    currency = json['currency'];
    details = json['details'] != null ? DetailsAmountTransactionsModel.fromJson(json['details']) : null;
  }
  String? total;
  String? currency;
  DetailsAmountTransactionsModel? details;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['currency'] = currency;
    if (details != null) {
      map['details'] = details?.toJson();
    }
    return map;
  }

}

class DetailsAmountTransactionsModel {
  DetailsAmountTransactionsModel({
      this.subtotal, 
      this.shipping, 
      this.shippingDiscount,});

  DetailsAmountTransactionsModel.fromJson(dynamic json) {
    subtotal = json['subtotal'];
    shipping = json['shipping'];
    shippingDiscount = json['shipping_discount'];
  }
  String? subtotal;
  String? shipping;
  num? shippingDiscount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['subtotal'] = subtotal;
    map['shipping'] = shipping;
    map['shipping_discount'] = shippingDiscount;
    return map;
  }

}




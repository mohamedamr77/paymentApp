class PaymentIntentModel {
  String? id;
  String? object;
  String? allowRedisplay;
  BillingDetails? billingDetails;
  int? created;
  String? customer;
  bool? livemode;
  Map<String, dynamic>? metadata;
  String? type;
  UsBankAccount? usBankAccount;

  PaymentIntentModel({
    this.id,
    this.object,
    this.allowRedisplay,
    this.billingDetails,
    this.created,
    this.customer,
    this.livemode,
    this.metadata,
    this.type,
    this.usBankAccount,
  });

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) {
    return PaymentIntentModel(
      id: json['id'],
      object: json['object'],
      allowRedisplay: json['allow_redisplay'],
      billingDetails: json['billing_details'] != null
          ? BillingDetails.fromJson(json['billing_details'])
          : null,
      created: json['created'],
      customer: json['customer'],
      livemode: json['livemode'],
      metadata: json['metadata'] ?? {},
      type: json['type'],
      usBankAccount: json['us_bank_account'] != null
          ? UsBankAccount.fromJson(json['us_bank_account'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'allow_redisplay': allowRedisplay,
      'billing_details': billingDetails?.toJson(),
      'created': created,
      'customer': customer,
      'livemode': livemode,
      'metadata': metadata,
      'type': type,
      'us_bank_account': usBankAccount?.toJson(),
    };
  }
}

class BillingDetails {
  Address? address;
  String? email;
  String? name;
  String? phone;

  BillingDetails({this.address, this.email, this.name, this.phone});

  factory BillingDetails.fromJson(Map<String, dynamic> json) {
    return BillingDetails(
      address: json['address'] != null ? Address.fromJson(json['address']) : null,
      email: json['email'],
      name: json['name'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address?.toJson(),
      'email': email,
      'name': name,
      'phone': phone,
    };
  }
}

class Address {
  String? city;
  String? country;
  String? line1;
  String? line2;
  String? postalCode;
  String? state;

  Address({this.city, this.country, this.line1, this.line2, this.postalCode, this.state});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city'],
      country: json['country'],
      line1: json['line1'],
      line2: json['line2'],
      postalCode: json['postal_code'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'city': city,
      'country': country,
      'line1': line1,
      'line2': line2,
      'postal_code': postalCode,
      'state': state,
    };
  }
}

class UsBankAccount {
  String? accountHolderType;
  String? accountType;
  String? bankName;
  String? financialConnectionsAccount;
  String? fingerprint;
  String? last4;
  Networks? networks;
  String? routingNumber;
  Map<String, dynamic>? statusDetails;

  UsBankAccount({
    this.accountHolderType,
    this.accountType,
    this.bankName,
    this.financialConnectionsAccount,
    this.fingerprint,
    this.last4,
    this.networks,
    this.routingNumber,
    this.statusDetails,
  });

  factory UsBankAccount.fromJson(Map<String, dynamic> json) {
    return UsBankAccount(
      accountHolderType: json['account_holder_type'],
      accountType: json['account_type'],
      bankName: json['bank_name'],
      financialConnectionsAccount: json['financial_connections_account'],
      fingerprint: json['fingerprint'],
      last4: json['last4'],
      networks: json['networks'] != null ? Networks.fromJson(json['networks']) : null,
      routingNumber: json['routing_number'],
      statusDetails: json['status_details'] ?? {},
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'account_holder_type': accountHolderType,
      'account_type': accountType,
      'bank_name': bankName,
      'financial_connections_account': financialConnectionsAccount,
      'fingerprint': fingerprint,
      'last4': last4,
      'networks': networks?.toJson(),
      'routing_number': routingNumber,
      'status_details': statusDetails,
    };
  }
}

class Networks {
  String? preferred;
  List<String>? supported;

  Networks({this.preferred, this.supported});

  factory Networks.fromJson(Map<String, dynamic> json) {
    return Networks(
      preferred: json['preferred'],
      supported: List<String>.from(json['supported']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'preferred': preferred,
      'supported': supported,
    };
  }
}

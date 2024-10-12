class PaymentIntentModel {
  PaymentIntentModel({
      this.id, 
      this.object, 
      this.amount, 
      this.amountCapturable, 
      this.amountDetails, 
      this.amountReceived, 
      this.application, 
      this.applicationFeeAmount, 
      this.automaticPaymentMethods, 
      this.canceledAt, 
      this.cancellationReason, 
      this.captureMethod, 
      this.clientSecret, 
      this.confirmationMethod, 
      this.created, 
      this.currency, 
      this.customer, 
      this.description, 
      this.invoice, 
      this.lastPaymentError, 
      this.latestCharge, 
      this.livemode, 
      this.metadata, 
      this.nextAction, 
      this.onBehalfOf, 
      this.paymentMethod, 
      this.paymentMethodOptions, 
      this.paymentMethodTypes, 
      this.processing, 
      this.receiptEmail, 
      this.redaction, 
      this.review, 
      this.setupFutureUsage, 
      this.shipping, 
      this.statementDescriptor, 
      this.statementDescriptorSuffix, 
      this.status, 
      this.transferData, 
      this.transferGroup,});

  PaymentIntentModel.fromJson(dynamic json) {
    id = json['id'];
    object = json['object'];
    amount = json['amount'];
    amountCapturable = json['amount_capturable'];
    amountDetails = json['amount_details'] != null ? AmountDetails.fromJson(json['amount_details']) : null;
    amountReceived = json['amount_received'];
    application = json['application'];
    applicationFeeAmount = json['application_fee_amount'];
    automaticPaymentMethods = json['automatic_payment_methods'];
    canceledAt = json['canceled_at'];
    cancellationReason = json['cancellation_reason'];
    captureMethod = json['capture_method'];
    clientSecret = json['client_secret'];
    confirmationMethod = json['confirmation_method'];
    created = json['created'];
    currency = json['currency'];
    customer = json['customer'];
    description = json['description'];
    invoice = json['invoice'];
    lastPaymentError = json['last_payment_error'];
    latestCharge = json['latest_charge'];
    livemode = json['livemode'];
    metadata = json['metadata'];
    nextAction = json['next_action'];
    onBehalfOf = json['on_behalf_of'];
    paymentMethod = json['payment_method'];
    paymentMethodOptions = json['payment_method_options'] != null ? PaymentMethodOptions.fromJson(json['payment_method_options']) : null;
    paymentMethodTypes = json['payment_method_types'] != null ? json['payment_method_types'].cast<String>() : [];
    processing = json['processing'];
    receiptEmail = json['receipt_email'];
    redaction = json['redaction'];
    review = json['review'];
    setupFutureUsage = json['setup_future_usage'];
    shipping = json['shipping'];
    statementDescriptor = json['statement_descriptor'];
    statementDescriptorSuffix = json['statement_descriptor_suffix'];
    status = json['status'];
    transferData = json['transfer_data'];
    transferGroup = json['transfer_group'];
  }
  String? id;
  String? object;
  num? amount;
  num? amountCapturable;
  AmountDetails? amountDetails;
  num? amountReceived;
  dynamic application;
  dynamic applicationFeeAmount;
  dynamic automaticPaymentMethods;
  dynamic canceledAt;
  dynamic cancellationReason;
  String? captureMethod;
  String? clientSecret;
  String? confirmationMethod;
  num? created;
  String? currency;
  dynamic customer;
  dynamic description;
  dynamic invoice;
  dynamic lastPaymentError;
  dynamic latestCharge;
  bool? livemode;
  dynamic metadata;
  dynamic nextAction;
  dynamic onBehalfOf;
  String? paymentMethod;
  PaymentMethodOptions? paymentMethodOptions;
  List<String>? paymentMethodTypes;
  dynamic processing;
  dynamic receiptEmail;
  dynamic redaction;
  dynamic review;
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  String? status;
  dynamic transferData;
  dynamic transferGroup;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['object'] = object;
    map['amount'] = amount;
    map['amount_capturable'] = amountCapturable;
    if (amountDetails != null) {
      map['amount_details'] = amountDetails?.toJson();
    }
    map['amount_received'] = amountReceived;
    map['application'] = application;
    map['application_fee_amount'] = applicationFeeAmount;
    map['automatic_payment_methods'] = automaticPaymentMethods;
    map['canceled_at'] = canceledAt;
    map['cancellation_reason'] = cancellationReason;
    map['capture_method'] = captureMethod;
    map['client_secret'] = clientSecret;
    map['confirmation_method'] = confirmationMethod;
    map['created'] = created;
    map['currency'] = currency;
    map['customer'] = customer;
    map['description'] = description;
    map['invoice'] = invoice;
    map['last_payment_error'] = lastPaymentError;
    map['latest_charge'] = latestCharge;
    map['livemode'] = livemode;
    map['metadata'] = metadata;
    map['next_action'] = nextAction;
    map['on_behalf_of'] = onBehalfOf;
    map['payment_method'] = paymentMethod;
    if (paymentMethodOptions != null) {
      map['payment_method_options'] = paymentMethodOptions?.toJson();
    }
    map['payment_method_types'] = paymentMethodTypes;
    map['processing'] = processing;
    map['receipt_email'] = receiptEmail;
    map['redaction'] = redaction;
    map['review'] = review;
    map['setup_future_usage'] = setupFutureUsage;
    map['shipping'] = shipping;
    map['statement_descriptor'] = statementDescriptor;
    map['statement_descriptor_suffix'] = statementDescriptorSuffix;
    map['status'] = status;
    map['transfer_data'] = transferData;
    map['transfer_group'] = transferGroup;
    return map;
  }

}

class PaymentMethodOptions {
  PaymentMethodOptions({
      this.acssDebit,});

  PaymentMethodOptions.fromJson(dynamic json) {
    acssDebit = json['acss_debit'] != null ? AcssDebit.fromJson(json['acss_debit']) : null;
  }
  AcssDebit? acssDebit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (acssDebit != null) {
      map['acss_debit'] = acssDebit?.toJson();
    }
    return map;
  }

}

class AcssDebit {
  AcssDebit({
      this.mandateOptions, 
      this.verificationMethod,});

  AcssDebit.fromJson(dynamic json) {
    mandateOptions = json['mandate_options'] != null ? MandateOptions.fromJson(json['mandate_options']) : null;
    verificationMethod = json['verification_method'];
  }
  MandateOptions? mandateOptions;
  String? verificationMethod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (mandateOptions != null) {
      map['mandate_options'] = mandateOptions?.toJson();
    }
    map['verification_method'] = verificationMethod;
    return map;
  }

}

class MandateOptions {
  MandateOptions({
      this.intervalDescription, 
      this.paymentSchedule, 
      this.transactionType,});

  MandateOptions.fromJson(dynamic json) {
    intervalDescription = json['interval_description'];
    paymentSchedule = json['payment_schedule'];
    transactionType = json['transaction_type'];
  }
  String? intervalDescription;
  String? paymentSchedule;
  String? transactionType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['interval_description'] = intervalDescription;
    map['payment_schedule'] = paymentSchedule;
    map['transaction_type'] = transactionType;
    return map;
  }

}

class AmountDetails {
  AmountDetails({
      this.tip,});

  AmountDetails.fromJson(dynamic json) {
    tip = json['tip'];
  }
  dynamic tip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tip'] = tip;
    return map;
  }

}
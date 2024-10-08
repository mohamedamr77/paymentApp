import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key,  });


  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
   String cardNumber ='';

   String expiryDate = '';

   String cvvCode ='';
   String cardHolderName ='';

   bool showBackView = false;
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardType: CardType.visa,
            isHolderNameVisible: true,
            cardNumber: cardNumber,
            expiryDate:expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            onCreditCardWidgetChange: (v){}
        ),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (creditCardModel){
              cardNumber =creditCardModel.cardNumber;
              expiryDate =creditCardModel.expiryDate;
              cardHolderName =creditCardModel.cardHolderName;
              cvvCode =creditCardModel.cvvCode;
              showBackView =creditCardModel.isCvvFocused;
              setState(() {

              });
            },
            formKey: formKey),
      ],
    );
  }
}

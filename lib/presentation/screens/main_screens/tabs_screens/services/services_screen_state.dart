part of 'services_screen_bloc.dart';

class ServicesScreenState {
  final bool clickPremiumState;
  final bool donationState;
  final bool cashBackState;
  final bool clickMarket;

  final bool payInPlaceState;
  final bool myCashState;
  final bool chosenPayState;
  final bool autoPaysState;

  final bool myFamilyState;
  final bool myAutoState;
  final bool myQrState;
  final bool myHomeState;

  final bool myDebts;
  final bool businessClick;

  final bool aviaTickets;
  final bool cardMonitoring;
  final bool powerBank;
  final bool cinemaTicket;

  ServicesScreenState(
      {required this.clickPremiumState,
      required this.donationState,
      required this.cashBackState,
      required this.clickMarket,
      required this.payInPlaceState,
      required this.myCashState,
      required this.chosenPayState,
      required this.autoPaysState,
      required this.myFamilyState,
      required this.myAutoState,
      required this.myQrState,
      required this.myHomeState,
      required this.myDebts,
      required this.businessClick,
      required this.aviaTickets,
      required this.cardMonitoring,
      required this.powerBank,
      required this.cinemaTicket,
      required this.foodDeliveryState});

  final bool foodDeliveryState;

  ServicesScreenState copyWith({
    bool? clickPremiumState,
    bool? donationState,
    bool? cashBackState,
    bool? clickMarket,
    bool? payInPlaceState,
    bool? myCashState,
    bool? chosenPayState,
    bool? autoPaysState,
    bool? myFamilyState,
    bool? myAutoState,
    bool? myQrState,
    bool? myHomeState,
    bool? myDebts,
    bool? businessClick,
    bool? aviaTickets,
    bool? cardMonitoring,
    bool? powerBank,
    bool? cinemaTicket,
    bool? foodDeliveryState,
  }) {
    return ServicesScreenState(
        clickPremiumState: clickPremiumState ?? this.clickPremiumState,
        donationState: donationState ?? this.donationState,
        cashBackState: cashBackState ?? this.cashBackState,
        clickMarket: clickMarket ?? this.clickMarket,
        payInPlaceState: payInPlaceState ?? this.payInPlaceState,
        myCashState: myCashState ?? this.myCashState,
        chosenPayState: chosenPayState ?? this.chosenPayState,
        autoPaysState: autoPaysState ?? this.autoPaysState,
        myFamilyState: myFamilyState ?? this.myFamilyState,
        myAutoState: myAutoState ?? this.myAutoState,
        myQrState: myQrState ?? this.myQrState,
        myHomeState: myCashState ?? this.myHomeState,
        myDebts: myDebts ?? this.myDebts,
        businessClick: businessClick ?? this.businessClick,
        aviaTickets: aviaTickets ?? this.aviaTickets,
        cardMonitoring: cardMonitoring ?? this.cardMonitoring,
        powerBank: powerBank ?? this.powerBank,
        cinemaTicket: cinemaTicket ?? this.cinemaTicket,
        foodDeliveryState: foodDeliveryState ?? this.foodDeliveryState);
  }
}

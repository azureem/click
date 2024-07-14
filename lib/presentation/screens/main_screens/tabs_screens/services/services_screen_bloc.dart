import 'package:bloc/bloc.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_widgets/EnumItem.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'services_screen_event.dart';

part 'services_screen_state.dart';

class ServicesScreenBloc
    extends Bloc<ServicesScreenEvent, ServicesScreenState> {
  ServicesScreenBloc()
      : super(ServicesScreenState(
      clickPremiumState: false,
      donationState: false,
      cashBackState: false,
      clickMarket: false,

      payInPlaceState: false,
      myCashState: false,
      chosenPayState: false,
      autoPaysState: false,

      myFamilyState: false,
      myAutoState: false,
      myQrState: false,
      myHomeState: false,
      myDebts: false,
      businessClick: false,
      aviaTickets: false,
      cardMonitoring: false,
      powerBank: false,
      cinemaTicket: false,
      foodDeliveryState: false)) {
    on<ClickService>((event, emit) {
      switch (event.type) {
        case ServiceType.clickPremium:
          emit(state.copyWith(clickPremiumState: true));
          break;



        case ServiceType.donation:
          emit(state.copyWith(donationState: true));
          break;


        case ServiceType.cashback:
          emit(state.copyWith(cashBackState: true));
          break;


        case ServiceType.clickMarket:
          emit(state.copyWith(clickMarket: true));
          break;

        case ServiceType.paymentInPlace:
          emit(state.copyWith(payInPlaceState: true));
          break;


        case ServiceType.myCash:
          emit(state.copyWith(myCashState: true));
          break;

        case ServiceType.chosenPays:
          emit(state.copyWith(chosenPayState: true));
          break;

        case ServiceType.autoPays:
          emit(state.copyWith(autoPaysState: true));
          break;

        case ServiceType.myFamily:
          emit(state.copyWith(myFamilyState: true));
          break;


        case ServiceType.myAuto:
          emit(state.copyWith(myAutoState: true));
          break;

        case ServiceType.myQR:
          emit(state.copyWith(myQrState: true));
          break;

        case ServiceType.myHome:
          emit(state.copyWith(myHomeState: true));
          break;

        case ServiceType.myDebts:
          emit(state.copyWith(myDebts: true));
          break;

        case ServiceType.clickForBusiness:
          emit(state.copyWith(businessClick: true));
          break;

        case ServiceType.aviaTickets:
          emit(state.copyWith(aviaTickets: true));
          break;

        case ServiceType.cardMonitoring:
          emit(state.copyWith(cardMonitoring: true));
          break;


        case ServiceType.powerBanks:
          emit(state.copyWith(powerBank: true));
          break;

        case ServiceType.cinemaTickets:
          emit(state.copyWith(cinemaTicket: true));
          break;

        case ServiceType.foodDelivery:
          emit(state.copyWith(foodDeliveryState: true));
          break;
      }
    });
  }
}

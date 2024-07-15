import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/charity_screen/donation_screen.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/premium_screen/click_premium_screen.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_widgets/EnumItem.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_widgets/service_items.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_widgets/service_settings.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/services_screen_bloc.dart';
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:click_uz/utils/components/txt/text_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/components/image_paths/image_assets.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClickColors.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        backgroundColor: ClickColors.background,
        title: Center(child: txtBold("Xizmatlar", 20.0, Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: BlocConsumer<ServicesScreenBloc, ServicesScreenState>(
            listener: (context, state) {
             if(state.clickPremiumState){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ClickPremiumScreen()));
             }else if(state.donationState){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>DonationScreen()));
             }
            },
            builder: (context, state) {
              return Column(
              crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  txtBold("Asosiy xizmatlar", 18.0, Colors.white54),
                  verticalSpace(16.0),
                  serviceSettings(),

                  verticalSpace(18.0),
                  txtBold("Maxsus takliflar", 18.0, Colors.white54),
                  rowOfServiceItems(ls1, (ServiceType type) {
                  context.read<ServicesScreenBloc>().add(ClickService(type: type));
                  }),

                  verticalSpace(24.0),

                  const CustomDotDivider(),
                  verticalSpace(18.0),
                  txtBold("To'lov", 18.0, Colors.white54),

                  rowOfServiceItems(ls2, (ServiceType type) {
                    context.read<ServicesScreenBloc>().add(ClickService(type: type));
                  }),


                  verticalSpace(24.0),
                  const CustomDotDivider(),
                  verticalSpace(18.0),
                  txtBold("Click xizmatlari", 18.0, Colors.white54),

                  rowOfServiceItems(ls3, (ServiceType type) {
                    context.read<ServicesScreenBloc>().add(ClickService(type: type));
                  }),

                  rowOfServiceItems2(ls4, (ServiceType type) {
                    context.read<ServicesScreenBloc>().add(ClickService(type: type));
                  }),

                  verticalSpace(24.0),
                  const CustomDotDivider(),
                  verticalSpace(18.0),
                  txtBold("Boshqa xizmatlar", 18.0, Colors.white54),


                  rowOfServiceItems(ls5, (ServiceType type) {
                    context.read<ServicesScreenBloc>().add(ClickService(type: type));
                  }),


                  rowOfServiceItems1(ls6, (ServiceType type) {
                    context.read<ServicesScreenBloc>().add(ClickService(type: type));
                  }),
                  verticalSpace(24.0),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}










List<ServiceItemModel> ls1 = [
  ServiceItemModel(
      title: "Click Premium",
      img: ImageAssets.premium,
      type: ServiceType.clickPremium),
  ServiceItemModel(
      title: "Xayriya",
      img: ImageAssets.charityImg,
      type: ServiceType.donation),
  ServiceItemModel(
      title: "Katta cashback",
      img: ImageAssets.cachImg,
      type: ServiceType.cashback),
  ServiceItemModel(
      title: "Click Market",
      img: ImageAssets.market,
      type: ServiceType.clickMarket)
];



List<ServiceItemModel> ls2 = [
  ServiceItemModel(
      title: "Joylarda to'lov",
      img: ImageAssets.location,
      type: ServiceType.paymentInPlace),
  ServiceItemModel(
      title: "Mening hisobim",
      img: ImageAssets.myCash,
      type: ServiceType.myCash),
  ServiceItemModel(
      title: "Tanlangan to'lovlar",
      img: ImageAssets.starImg,
      type: ServiceType.chosenPays),
  ServiceItemModel(
      title: "Avto to'lovlar",
      img: ImageAssets.autoPays,
      type: ServiceType.autoPays)
];

List<ServiceItemModel> ls3 = [
  ServiceItemModel(
      title: "Mening oilam",
      img: ImageAssets.familyImg,
      type: ServiceType.myFamily),
  ServiceItemModel(
      title: "Mening avto",
      img: ImageAssets.autoImg,
      type: ServiceType.myAuto),
  ServiceItemModel(
      title: " Mening             QR-kodim",
      img: ImageAssets.qr,
      type: ServiceType.myQR),
  ServiceItemModel(
      title: "Mening uyim",
      img: ImageAssets.homeImg,
      type: ServiceType.myHome)
];

List<ServiceItemModel> ls4 = [
  ServiceItemModel(
      title: "Mening qarzlarim",
      img: ImageAssets.debts,
      type: ServiceType.myDebts),
  ServiceItemModel(
      title: "Biznes uchun CLICK",
      img: ImageAssets.businessClick,
      type: ServiceType.clickForBusiness),
];

List<ServiceItemModel> ls5 = [
  ServiceItemModel(
      title: "Avia chiptalar",
      img: ImageAssets.planeImg,
      type: ServiceType.aviaTickets),
  ServiceItemModel(
      title: "Kartalar monitoringi",
      img: ImageAssets.monitoring,
      type: ServiceType.cardMonitoring),
  ServiceItemModel(
      title: "Poverbanklar",
      img: ImageAssets.power,
      type: ServiceType.powerBanks),
  ServiceItemModel(
      title: "Kinoteatrga chiptalar",
      img: ImageAssets.charityImg,
      type: ServiceType.cinemaTickets)
];

List<ServiceItemModel> ls6 = [
  ServiceItemModel(
      title: "Taomlar yetkazish",
      img: ImageAssets.fastfoodImg,
      type: ServiceType.foodDelivery),
];
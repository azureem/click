import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/charity_screen/donation_screen.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_type_screens/premium_screen/click_premium_screen.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_widgets/EnumItem.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_widgets/service_items.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_widgets/service_settings.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/services_screen_bloc.dart';
import 'package:click_uz/utils/components/colors/colors.dart';
import 'package:click_uz/utils/components/spaces/sized_boxes.dart';
import 'package:click_uz/utils/components/txt/text_bold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/components/image_paths/image_assets.dart';
import 'data/sevices_item_model.dart';

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
        forceMaterialTransparency: false,
        automaticallyImplyLeading: false,
        backgroundColor: ClickColors.background,
        title: Center(child: txtBold("Xizmatlar", 18.0, Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: BlocConsumer<ServicesScreenBloc, ServicesScreenState>(
            listener: (context, state) {
              if (state.clickPremiumState) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ClickPremiumScreen()));
              } else if (state.donationState) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DonationScreen()));
              }
            },
            builder: (context, state) {
              var itemWidth = (MediaQuery.of(context).size.width - 32) / 4;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextMyStyle.txtBold("Asosiy xizmatlar", 14.0, ClickColors.textTitleColor),
                  verticalSpace(16.0),
                  serviceSettings(),
                  verticalSpace(16.0),
                  txtBold("Maxsus takliflar", 14.0, ClickColors.textTitleColor),
                  Container(
                    margin: const EdgeInsets.only(top: 16,bottom: 26),
                    height: 90,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: specialOfferList.length,
                        itemBuilder: (context, index) {
                      return ServiceItems(
                          width: itemWidth,
                          data: specialOfferList[index],
                          clickItem: () {
                            context.read<ServicesScreenBloc>().add(ClickService(type: specialOfferList[index].type));
                          });
                    }),
                  ),
                  const CustomDotDivider(),
                  verticalSpace(16.0),
                  txtBold("To'lov", 14.0, ClickColors.textTitleColor),
                  Container(
                    margin: const EdgeInsets.only(top: 16,bottom: 26),
                    height: 90,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: paymentList.length,
                        itemBuilder: (context, index) {
                          return ServiceItems(
                              width: itemWidth,
                              data: paymentList[index],
                              clickItem: () {
                                context.read<ServicesScreenBloc>().add(ClickService(type: paymentList[index].type));
                              });
                        }),
                  ),
                  const CustomDotDivider(),
                  verticalSpace(16.0),
                  txtBold("Click xizmatlari", 14.0, ClickColors.textTitleColor),
                  Container(
                    margin: const EdgeInsets.only(top: 16,bottom: 16),
                    height: 90,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: clickServicesList1.length,
                        itemBuilder: (context, index) {
                          return ServiceItems(
                              width: itemWidth,
                              data: clickServicesList1[index],
                              clickItem: () {
                                context.read<ServicesScreenBloc>().add(ClickService(type: clickServicesList1[index].type));
                              });
                        }),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16,bottom: 26),
                    height: 90,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: clickServicesList2.length,
                        itemBuilder: (context, index) {
                          return ServiceItems(
                              width: itemWidth,
                              data: clickServicesList2[index],
                              clickItem: () {
                                context.read<ServicesScreenBloc>().add(ClickService(type: clickServicesList2[index].type));
                              });
                        }),
                  ),
                  const CustomDotDivider(),
                  verticalSpace(16.0),
                  txtBold("Boshqa xizmatlar", 14.0, ClickColors.textTitleColor),
                  Container(
                    margin: const EdgeInsets.only(top: 16,bottom: 16),
                    height: 90,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: otherServicesList1.length,
                        itemBuilder: (context, index) {
                          return ServiceItems(
                              width: itemWidth,
                              data: otherServicesList1[index],
                              clickItem: () {
                                context.read<ServicesScreenBloc>().add(ClickService(type: otherServicesList1[index].type));
                              });
                        }),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16,bottom: 26),
                    height: 90,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: otherServicesList2.length,
                        itemBuilder: (context, index) {
                          return ServiceItems(
                              width: itemWidth,
                              data: otherServicesList2[index],
                              clickItem: () {
                                context.read<ServicesScreenBloc>().add(ClickService(type: otherServicesList2[index].type));
                              });
                        }),
                  ),
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

List<ServiceItemModel> specialOfferList = [
  ServiceItemModel(title: "Click Premium", img: ImageAssets.premium, type: ServiceType.clickPremium),
  ServiceItemModel(title: "Xayriya", img: ImageAssets.charityImg, type: ServiceType.donation),
  ServiceItemModel(title: "Katta cashback", img: ImageAssets.cachImg, type: ServiceType.cashback),
  ServiceItemModel(title: "Click Market", img: ImageAssets.market, type: ServiceType.clickMarket)
];

List<ServiceItemModel> paymentList = [
  ServiceItemModel(title: "Joylarda to'lov", img: ImageAssets.location, type: ServiceType.paymentInPlace),
  ServiceItemModel(title: "Mening hisobim", img: ImageAssets.myCash, type: ServiceType.myCash),
  ServiceItemModel(title: "Tanlangan to'lovlar", img: ImageAssets.starImg, type: ServiceType.chosenPays),
  ServiceItemModel(title: "Avto to'lovlar", img: ImageAssets.autoPays, type: ServiceType.autoPays)
];

List<ServiceItemModel> clickServicesList1 = [
  ServiceItemModel(title: "Mening oilam", img: ImageAssets.familyImg, type: ServiceType.myFamily),
  ServiceItemModel(title: "Mening avto", img: ImageAssets.autoImg, type: ServiceType.myAuto),
  ServiceItemModel(title: " Mening QR-kodim", img: ImageAssets.qr, type: ServiceType.myQR),
  ServiceItemModel(title: "Mening uyim", img: ImageAssets.homeImg, type: ServiceType.myHome)
];

List<ServiceItemModel> clickServicesList2 = [
  ServiceItemModel(title: "Mening qarzlarim", img: ImageAssets.debts, type: ServiceType.myDebts),
  ServiceItemModel(title: "Biznes uchun CLICK", img: ImageAssets.businessClick, type: ServiceType.clickForBusiness),
];

List<ServiceItemModel> otherServicesList1 = [
  ServiceItemModel(title: "Avia chiptalar", img: ImageAssets.planeImg, type: ServiceType.aviaTickets),
  ServiceItemModel(title: "Kartalar monitoringi", img: ImageAssets.monitoring, type: ServiceType.cardMonitoring),
  ServiceItemModel(title: "Poverbanklar", img: ImageAssets.power, type: ServiceType.powerBanks),
  ServiceItemModel(title: "Kinoteatrga chiptalar", img: ImageAssets.charityImg, type: ServiceType.cinemaTickets)
];

List<ServiceItemModel> otherServicesList2 = [
  ServiceItemModel(title: "Taomlar yetkazish", img: ImageAssets.fastfoodImg, type: ServiceType.foodDelivery),
];

part of 'services_screen_bloc.dart';

@immutable
sealed class ServicesScreenEvent {}
class ClickService extends ServicesScreenEvent{
  final ServiceType type;
  ClickService({required this.type});
}
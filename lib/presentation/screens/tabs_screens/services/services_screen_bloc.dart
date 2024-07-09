import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'services_screen_event.dart';
part 'services_screen_state.dart';

class ServicesScreenBloc extends Bloc<ServicesScreenEvent, ServicesScreenState> {
  ServicesScreenBloc() : super(ServicesScreenInitial()) {
    on<ServicesScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

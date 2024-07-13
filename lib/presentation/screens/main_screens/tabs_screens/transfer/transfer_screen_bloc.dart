import 'package:bloc/bloc.dart';
import 'package:click_uz/presentation/screens/main_screens/tabs_screens/services/service_widgets/EnumItem.dart';
import 'package:meta/meta.dart';

part 'transfer_screen_event.dart';
part 'transfer_screen_state.dart';

class TransferScreenBloc extends Bloc<TransferScreenEvent, TransferScreenState> {
  TransferScreenBloc() : super(TransferScreenInitial()) {
    on<TransferScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

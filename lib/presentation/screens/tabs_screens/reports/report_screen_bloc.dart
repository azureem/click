import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'report_screen_event.dart';
part 'report_screen_state.dart';

class ReportScreenBloc extends Bloc<ReportScreenEvent, ReportScreenState> {
  ReportScreenBloc() : super(ReportScreenInitial()) {
    on<ReportScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

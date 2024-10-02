import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import '../../repo/intenet_repo.dart';
import 'internet_home_state.dart';

class InternetCubit extends Cubit<InternetState> {
  InternetCubit(this.internetRepo) : super(InternetInitialState());
  final InternetRepo internetRepo;
  connectWithInternet() async {
    emit(InternetLoadingState());

    var result = await internetRepo.connectWithInternet();
    result.fold((faliureConnect) {
      if (kDebugMode) {
        print('Failed: ${faliureConnect.message}');
      } // Debugging print
      emit(InternetFaliureState(errorMessage: faliureConnect.message));
    }, (rightConnect) {
      if (kDebugMode) {
        print('Success: Connected');
      } // Debugging print
      emit(InternetSuccessState());
    });
  }
}

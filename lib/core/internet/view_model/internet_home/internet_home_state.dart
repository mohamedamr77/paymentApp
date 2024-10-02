abstract class InternetState {}

class InternetInitialState extends InternetState {}

class InternetFaliureState extends InternetState {
  final String errorMessage;
  InternetFaliureState({required this.errorMessage});
}

class InternetSuccessState extends InternetState {}

class InternetLoadingState extends InternetState {}

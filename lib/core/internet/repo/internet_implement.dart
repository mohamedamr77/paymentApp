import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';


import '../../error/faliure.dart';
import 'intenet_repo.dart';

class InternetImplement implements InternetRepo {
  @override
  Future<Either<Failure, void>> connectWithInternet() async {
    final connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      // No internet connection
      return const Left(ServerFailure(message: 'No Internet connectivity'));
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // Connected to WiFi
      return const Right(null); // Return success
    } else if (connectivityResult == ConnectivityResult.mobile) {
      // Connected to Mobile Data
      return const Right(null); // Return success
    } else if (connectivityResult == ConnectivityResult.ethernet) {
      // Connected to Ethernet
      return const Right(null); // Return success
    } else {
      // Handle other cases like Bluetooth, etc. if needed
      return const Right(null); // Return success for any other connection
    }
  }
}

import 'package:dartz/dartz.dart';

import '../../error/faliure.dart';

abstract class InternetRepo {
  Future<Either<Failure, void>> connectWithInternet();
}

import 'package:af_tips/tips_service.dart';
import 'package:get_it/get_it.dart';

void setup() {
  GetIt.I.registerSingleton(TipsService());
}
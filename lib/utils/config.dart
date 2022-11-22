// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static const ENV_FILE = ".env";
  static String? GOOGLE_MAPS_API_KEY = dotenv.env["GOOGLE_MAPS_API_KEY"];
}

import 'package:logging/logging.dart';

final log = new Logger('dev_server');

void logger(String msg, bool isError) {
  if (isError) {
    log.severe(msg);
  } else {
    log.fine(msg);
  }
}
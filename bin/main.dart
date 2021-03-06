import 'dart:io';
import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:dev_server/dev_server.dart';

void main(List<String> args) {
  final options = parseOptions(args);
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(print);

  final handler = const Pipeline()
      .addMiddleware(logRequests(logger: logger))
      .addHandler(pwaHandler);

  final host = InternetAddress.anyIPv4;
  final port = options.port;
  io.serve(handler, host, port);
  log.fine('serve on http://${host.address}:$port/');
}

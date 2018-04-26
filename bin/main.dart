import 'package:shelf/shelf_io.dart' as io;
import 'package:dev_server/dev_server.dart';

void main() {
  io.serve(pwaHandler, 'localhost', 8080);
}

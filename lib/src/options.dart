import 'package:build_cli_annotations/build_cli_annotations.dart';

part 'options.g.dart';

@CliOptions()
class Options {
  @CliOption(abbr: 'p', help: 'change port', defaultsTo: 8080)
  final int port;

  Options({this.port});
}

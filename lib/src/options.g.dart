// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options.dart';

// **************************************************************************
// CliGenerator
// **************************************************************************

T _$badNumberFormat<T extends num>(
        String source, String type, String argName) =>
    throw new FormatException(
        'Cannot parse "$source" into `$type` for option "$argName".');

Options _$parseOptionsResult(ArgResults result) => new Options(
    port: int.tryParse(result['port'] as String) ??
        _$badNumberFormat(result['port'] as String, 'int', 'port'));

ArgParser _$populateOptionsParser(ArgParser parser) => parser
  ..addOption('port', abbr: 'p', help: 'change port', defaultsTo: '8080');

final _$parserForOptions = _$populateOptionsParser(new ArgParser());

Options parseOptions(List<String> args) {
  var result = _$parserForOptions.parse(args);
  return _$parseOptionsResult(result);
}

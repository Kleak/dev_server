import 'dart:async';
import 'dart:io';

import 'package:shelf/shelf.dart';

import 'resource_handler.dart';

const authorizedExtensions = const [
  'js',
  'css',
  'html',
  'png',
  'jpeg',
  'jpg',
  'ttf',
  'map',
  'svg',
  'ico',
  'json',
];

Future<Response> pwaHandler(Request request) async {
  final path = request.requestedUri.path;
  final regExp = new RegExp('^.*.(${authorizedExtensions.join('|')})\$');
  if (regExp.hasMatch(path)) {
    return resourceHandler(request.change(), regExp.firstMatch(path).group(1));
  }
  final file = new File('build/web/index.html');
  if (file.existsSync()) {
    return new Response.ok(
      file.readAsBytesSync(),
      headers: {'Content-Type': 'text/html'},
    );
  }
  return new Response.notFound('Not found');
}

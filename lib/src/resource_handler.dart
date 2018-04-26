import 'dart:async';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:mime/mime.dart';

Future<Response> resourceHandler(Request request, String type) async {
  final path = request.requestedUri.path;
  final file = new File('build/web$path');
  if (file.existsSync()) {
    return new Response.ok(
      file.readAsBytesSync(),
      headers: {'Content-Type': lookupMimeType(type)},
    );
  }
  return new Response.notFound('Not found');
}

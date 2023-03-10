part of '../lib_photo.dart';

class PhotoGalleryService {
  static Future<Map<String, dynamic>> getGallery(
    int page, {
    http.Client? testClient,
    HttpRequestModel? requestTest,
  }) async {
    Map<String, dynamic> data = await GetApi.map(requestTest ??
        HttpRequestModel(endPoint: ServicesPaths.epPhotos, queryParams: {
          '_limit': '10',
          '_page': '$page',
        }));

    return data;
  }
}

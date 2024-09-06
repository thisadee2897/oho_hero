import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oho_hero/config/constants/api_path.dart';
export 'package:dio/dio.dart';

/// Do call the rest API to get, store data on a remote database for that we need
/// to write the rest API call at a single place and need to return the data
/// if the rest call is a success or need to return custom error exception
/// on the basis of 4xx, 5xx status code. We can make use of http or dio package
/// to make the rest API call in the flutter

class ApiInterceptor extends Interceptor {
  final Ref ref;

  ApiInterceptor({
    required this.ref,
  });

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String token = "sK!wLWgVHta4%vteQoiBD9QZFPVZbW4aQ8HkLKm7x2a@7sJJH74P2MX!qH95&xfMP75cpoZHH25wi5%tZXNv5*QgjPj2q";
    options.headers["Authorization"] = "Bearer $token";
    // var lang = ref.read(languageProvider);
    // options.queryParameters = {...options.queryParameters, "lang": lang};

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {}
    handler.reject(err);
  }
}

class ApiClient {
  Dio baseUrl(ProviderRef<Dio> ref) {
    Dio dio = Dio();
    dio.options.baseUrl = prod;
    dio.interceptors.add(ApiInterceptor(ref: ref));
    return dio;
  }

  Dio baseUrlImage(ProviderRef<Dio> ref) {
    Dio dio = Dio();
    dio.options.baseUrl = prodImage;
    dio.interceptors.add(ApiInterceptor(ref: ref));
    return dio;
  }
}

final apiClientProvider = Provider<Dio>((ref) {
  return ApiClient().baseUrl(ref);
});

final apiClientImageProvider = Provider<Dio>((ref) {
  return ApiClient().baseUrlImage(ref);
});

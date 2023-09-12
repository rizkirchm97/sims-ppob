import 'package:dio/src/response.dart';
import 'package:sims_ppob/data/datasource/network/api/api_client.dart';

abstract class NetworkSource {
  Future<Response> login(final Map<String, dynamic> data);
}

class NetworkSourceImpl extends NetworkSource {

  NetworkSourceImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Response> login(final Map<String, dynamic> data) async {
    return await _apiClient.post('login', data: data);
  }

}
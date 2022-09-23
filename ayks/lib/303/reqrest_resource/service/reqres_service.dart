import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ayks/303/reqrest_resource/model/resource.model.dart';

abstract class IReqresService {
  IReqresService(this.dio);
  final Dio dio;

  Future<ResourceModel?> fetchResourceItem();
}

enum _ReqResPath { resource }

class ReqresService extends IReqresService {
  ReqresService(Dio dio) : super(dio);

  @override
  Future<ResourceModel?> fetchResourceItem() async {
    // TODO: implement fetchResourceItem
    final response = await dio.get('/${_ReqResPath.resource.name}');

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return ResourceModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}

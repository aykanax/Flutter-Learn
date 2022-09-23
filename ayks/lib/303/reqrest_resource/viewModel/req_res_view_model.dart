import 'package:ayks/202/cache/shared_learn_cache.dart';
import 'package:ayks/303/reqrest_resource/model/resource.model.dart';
import 'package:ayks/303/reqrest_resource/service/reqres_service.dart';
import 'package:ayks/303/reqrest_resource/view/reqres_view.dart';
import 'package:ayks/product/service/project_dio.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

abstract class ReqResviewModel extends LoadingStatefull<ReqResView>
    with ProjectDioMixin {
  late final IReqresService reqresService;

  List<Data> resources = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reqresService = ReqresService(service);
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}

import 'package:ayks/303/reqrest_resource/model/resource.model.dart';
import 'package:ayks/303/reqrest_resource/service/reqres_service.dart';
import 'package:flutter/cupertino.dart';

class ReqResProvider extends ChangeNotifier {
  final IReqresService reqresService;

  List<Data> resources = [];
  bool isLoading = false;
  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  ReqResProvider(this.reqresService) {
    _fetch();
  }

  Future<void> _fetch() async {
    _changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    _changeLoading();
  }
}

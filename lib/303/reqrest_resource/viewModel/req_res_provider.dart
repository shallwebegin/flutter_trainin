import 'package:flutter/material.dart';
import 'package:flutter_trainin/303/reqrest_resource/model/resource_model.dart';
import 'package:flutter_trainin/303/reqrest_resource/service/reqres_service.dart';

class ReqResProvider extends ChangeNotifier {
  ReqResProvider(this.reqresService) {
    _fetch();
  }
  final IReqresService reqresService;

  List<Data> resources = [];
  bool isLoading = false;

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> _fetch() async {
    _changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    _changeLoading();
  }
}

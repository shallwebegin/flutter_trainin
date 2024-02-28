import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trainin/202/cache/shared_learn_cache.dart';
import 'package:flutter_trainin/303/reqrest_resource/model/resource_model.dart';
import 'package:flutter_trainin/303/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_trainin/303/reqrest_resource/view/req_res_view.dart';

import '../../../product/service/project_dio.dart';

abstract class ReqresViewModel extends LoadingStatefull<ReqResView>
    with ProjectDioMixin {
  late final IReqresService reqresService;

  List<Data> resources = [];

  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(service);
    _fetch();
  }

  void _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}

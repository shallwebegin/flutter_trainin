import 'package:flutter/material.dart';
import 'package:flutter_trainin/303/reqrest_resource/model/resource_model.dart';
import 'package:flutter_trainin/303/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_trainin/303/reqrest_resource/viewModel/req_res_provider.dart';
import 'package:flutter_trainin/product/extension/string_extension.dart';
import 'package:flutter_trainin/product/service/project_dio.dart';
import 'package:provider/provider.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({super.key});

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

class _ReqResViewState extends State<ReqResView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqResProvider>(
      create: (context) => ReqResProvider(ReqresService(service)),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: context.watch<ReqResProvider>().isLoading
                ? const CircularProgressIndicator()
                : null,
          ),
          body: Column(
            children: [
              Selector<ReqResProvider, bool>(builder: (context, value, child) {
                return value ? const Placeholder() : const Text('data');
              }, selector: (context, provider) {
                return provider.isLoading;
              }),
              Expanded(
                child: _resourcesListView(
                    context, context.watch<ReqResProvider>().resources),
              ),
            ],
          ),
        );
      },
    );
  }

  ListView _resourcesListView(BuildContext context, List<Data> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
            color: Color(items[index].color?.colorValue ?? 0),
            child: Text(items[index].name ?? ''));
      },
    );
  }
}

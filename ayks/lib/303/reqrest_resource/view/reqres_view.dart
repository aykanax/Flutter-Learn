import 'dart:developer';

import 'package:ayks/303/reqrest_resource/model/resource.model.dart';
import 'package:ayks/303/reqrest_resource/service/reqres_service.dart';
import 'package:ayks/303/reqrest_resource/viewModel/req_res_provider.dart';
import 'package:ayks/303/reqrest_resource/viewModel/req_res_view_model.dart';
import 'package:ayks/product/global/theme_notifier.dart';
import 'package:ayks/product/service/project_dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({Key? key}) : super(key: key);

  State<ReqResView> createState() => _ReqResViewState();
}

class _ReqResViewState extends State<ReqResView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReqResProvider(ReqresService(service)),
      builder: (context, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<ThemeNotifer>().changeTheme();
            },
          ),
          appBar: AppBar(
              title: context.watch<ReqResProvider>().isLoading
                  ? const CircularProgressIndicator(
                      color: Colors.amber,
                    )
                  : null),
          body: Column(
            children: [
              const Placeholder(),
              Expanded(
                child: _resourceListview(
                    context, context.watch<ReqResProvider>().resources),
              ),
            ],
          ),
        );
      },
    );
  }
}

@override
ListView _resourceListview(BuildContext context, List<Data> items) {
  return ListView.builder(
    itemCount: context.watch<ReqResProvider>().resources.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
          color: Color(items[index].colorValue),
          child: Text(items[index].name ?? ''));
    },
  );
}

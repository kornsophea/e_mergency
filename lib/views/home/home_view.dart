library home;

import 'package:flutter/material.dart';
import 'package:flutter_mvvm_boilerplate/core/base/view_model_provider.dart';
import 'package:flutter_mvvm_boilerplate/providers/theme_provider.dart';
import 'package:flutter_mvvm_boilerplate/views/home/home_view_model.dart';
import 'package:provider/provider.dart';

part 'home_adaptive.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      onModelReady: (context, viewModel) {},
      builder: (context, viewModel, child) {
        return _HomeAdaptive(viewModel);
      },
    );
  }
}

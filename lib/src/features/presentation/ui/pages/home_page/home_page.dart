import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lovie_lovemovie/dependency_injection.dart';
import 'package:lovie_lovemovie/src/features/presentation/bloc/box_office_bloc.dart';
import 'package:lovie_lovemovie/src/features/presentation/ui/pages/home_page/local_widgets/daily_boxoffice_horizontal_card_list.dart';
import 'package:lovie_lovemovie/src/features/presentation/viewmodel/home_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeViewModel homeViewModel = getIt.get<HomeViewModel>();

    homeViewModel.getDailyBoxOffice('20220601');

    return BlocProvider(
      create: (_) => homeViewModel.boxOfficeBloc,
      child: Scaffold(
        body: DailyBoxOfficeHorizontalCardList(),
      )
    );
  }
}

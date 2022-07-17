import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:lovie_lovemovie/src/features/domain/model/box_office_model.dart';
import 'package:lovie_lovemovie/src/features/domain/usecases/box_office_usecase.dart';
import 'package:lovie_lovemovie/src/features/domain/usecases/naver_api_usecase.dart';
import 'package:lovie_lovemovie/src/features/presentation/bloc/box_office_bloc.dart';

class HomeViewModel extends Object {
  final BoxOfficeUseCase boxOfficeUseCase;
  final NaverApiUseCase naverApiUseCase;
  final BoxOfficeBloc boxOfficeBloc;

  const HomeViewModel({
    required this.boxOfficeUseCase,
    required this.boxOfficeBloc,
    required this.naverApiUseCase,
  });

  getDailyBoxOffice({String date = ''}) async {
    if (date.isEmpty) {
      date = DateFormat('yyyyMMdd')
          .format(DateTime.now().subtract(const Duration(days: 1)));
    }

    List<BoxOfficeModel> boxOfficeList =
        await boxOfficeUseCase.getDailyBoxOffice(date);

    for (int i = 0; i < boxOfficeList.length; i++) {
      String image =
          await naverApiUseCase.getImageByName(boxOfficeList[i].movieNm);

      boxOfficeList[i].image = image;
    }

    boxOfficeBloc.updateBoxOfficeBloc = boxOfficeList;
  }
}

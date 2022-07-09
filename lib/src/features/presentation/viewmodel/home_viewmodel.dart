import 'package:lovie_lovemovie/src/features/domain/model/box_office_model.dart';
import 'package:lovie_lovemovie/src/features/domain/usecases/box_office_usecase.dart';
import 'package:lovie_lovemovie/src/features/presentation/bloc/box_office_bloc.dart';

class HomeViewModel extends Object {
  final BoxOfficeUseCase boxOfficeUseCase;
  final BoxOfficeBloc boxOfficeBloc;

  const HomeViewModel({
    required this.boxOfficeUseCase,
    required this.boxOfficeBloc,
  });

  getDailyBoxOffice(String date) async {
    List<BoxOfficeModel> boxOfficeList =
        await boxOfficeUseCase.getDailyBoxOffice(date);

    boxOfficeBloc.updateBoxOfficeBloc = boxOfficeList;
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';

class BoxOfficeBloc extends Cubit<List> {
  BoxOfficeBloc(super.initialState);

  set updateBoxOfficeBloc(List newValue) => emit(newValue);
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lovie_lovemovie/src/features/domain/model/box_office_model.dart';
import 'package:lovie_lovemovie/src/features/presentation/bloc/box_office_bloc.dart';

class DailyBoxOfficeHorizontalCardList extends StatelessWidget {
  const DailyBoxOfficeHorizontalCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoxOfficeBloc, List>(
      builder: (context, state) {
        List boxOfficeList = state;

        return ListView.builder(
          itemBuilder: (context, index) => Card(
            child: Column(
              children: [
                Text(boxOfficeList[index].movieNm),
                Image.network(boxOfficeList[index].image),
              ],
            ),
          ),
          itemCount: boxOfficeList.length,
          scrollDirection: Axis.horizontal,
          cacheExtent: MediaQuery.of(context).size.width,
        );
      },
    );
  }
}

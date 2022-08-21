import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_weather/args/detail_page_args.dart';
import 'package:test_weather/bloc/home_page_bloc.dart';
import 'package:test_weather/bloc/home_page_state.dart';
import 'package:test_weather/data/response/forecast.dart';
import 'package:test_weather/pages/home/component/item_forecast_widget.dart';
import 'package:test_weather/route.dart';
import 'package:test_weather/utils/const_data.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocConsumer<HomePageBloc, HomePageState>(
        listener: (context, state) {
          return;
        },
        builder: (context, state) {
          if (state is InitialHomePageState || state is LoadingHomePageState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorHomePageState) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else if (state is SuccessHomePageState) {
            return ListView.separated(
                itemBuilder: (_, index) {
                  return ItemForecastWidget(
                    item: state.listForecast[index],
                    onClickItemForecastWidget: (Forecast item) {
                      Navigator.pushNamed(context, Routes.detail,
                          arguments: DetailPageArgs(item));
                    },
                  );
                },
                separatorBuilder: (_, __) {
                  return const SizedBox(
                    height: 3,
                  );
                },
                itemCount: state.listForecast.length);
          }
          return const Center(
            child: Text(ConstData.error),
          );
        },
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_weather/data/response/forecast.dart';
import 'package:test_weather/utils/app_date_utils.dart';

class ItemForecastWidget extends StatelessWidget {
  final Forecast item;
  final Function(Forecast item) onClickItemForecastWidget;

  const ItemForecastWidget(
      {Key? key, required this.item, required this.onClickItemForecastWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClickItemForecastWidget(item);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: CachedNetworkImage(
              imageUrl: item.fullUrlImage,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) {
                return const Icon(Icons.error);
              },
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppDateUtils.toyMMMEdJ(item.dtTxt)),
              Text(item.firstWeather?.main ?? ''),
              Text('${item.main?.temp.toString() ?? '-'} °C'),
            ],
          ))
        ],
      ),
    );
  }
}

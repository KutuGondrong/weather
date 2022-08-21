import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_weather/args/detail_page_args.dart';
import 'package:test_weather/utils/app_date_utils.dart';
import 'package:test_weather/utils/const_data.dart';

class DetailPage extends StatefulWidget {
  final DetailPageArgs args;

  const DetailPage({Key? key, required this.args}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstData.detailTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              AppDateUtils.toyMMMEdJ(widget.args.forecast.dtTxt),
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w300,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${widget.args.forecast.main?.temp.toString() ?? '-'} °C',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: CachedNetworkImage(
                    imageUrl: widget.args.forecast.fullUrlImage,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) {
                      return const Icon(Icons.error);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '${widget.args.forecast.firstWeather?.main ?? '-'} '
              '(${widget.args.forecast.firstWeather?.description ?? '-'})',
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(ConstData.tempMin),
                      Text(
                        '${widget.args.forecast.main?.tempMin.toString() ?? '-'} °C',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text(ConstData.tempMax),
                      Text(
                        '${widget.args.forecast.main?.tempMax.toString() ?? '-'} °C',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

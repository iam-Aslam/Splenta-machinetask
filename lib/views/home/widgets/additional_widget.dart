// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:weatherapp/constants/font.dart';

class AdditionalInfo extends StatelessWidget {
  AdditionalInfo({
    required this.wind,
    required this.humidity,
    required this.pressure,
    required this.feelsLike,
    super.key,
  });
  String wind;
  String humidity;
  String pressure;
  String feelsLike;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: const Color.fromRGBO(255, 223, 186, 1.0),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wind",
                        style: AppFont.titleFont,
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        "Pressure",
                        style: AppFont.titleFont,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        wind,
                        style: AppFont.infoFont,
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        pressure,
                        style: AppFont.infoFont,
                      )
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Humidity",
                        style: AppFont.titleFont,
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        "Feels Like",
                        style: AppFont.titleFont,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        humidity,
                        style: AppFont.infoFont,
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        feelsLike,
                        style: AppFont.infoFont,
                      )
                    ],
                  ),
                ],
              )
            ]),
      ),
    );
  }
}

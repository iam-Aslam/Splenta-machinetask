import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/constants/urls.dart';
import 'package:weatherapp/model/weather_model.dart';

class WeatherProvider with ChangeNotifier {
  Weather? data;
  getWeather() async {
    try {
      final response = await Dio().get(AppUrls.baseUrl, queryParameters: {
        'q': 'chennai',
        'appid': AppUrls.apiKey,
        'units': 'metric',
      });

      final weatherData = response.data;
      data = Weather.fromJson(weatherData);
      notifyListeners();
    } catch (error) {
      log('Error fetching weather data: $error');
      rethrow;
    }
  }
}

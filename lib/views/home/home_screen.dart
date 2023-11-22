import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/controller/weather_controller.dart';
import 'package:weatherapp/views/home/widgets/additional_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);
    weatherProvider.getWeather();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFf9f9f9),
        elevation: 0,
        title: const Text(
          "Weather App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Consumer<WeatherProvider>(
            builder: (context, value, child) {
              if (weatherProvider.data == null) {
                return const Center(
                  child: Text('Check Your Internet Connection'),
                );
              } else {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.wb_sunny_rounded,
                        color: Colors.orange,
                        size: 64.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        ' ${weatherProvider.data!.temp!.toString()} °C',
                        style: const TextStyle(
                          fontSize: 46.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        weatherProvider.data!.cityName!,
                        style: const TextStyle(
                            fontSize: 18.0, color: Color(0xFF5a5a5a)),
                      ),
                      AdditionalInfo(
                        wind: weatherProvider.data!.wind!.toString(),
                        humidity: weatherProvider.data!.humidity!.toString(),
                        pressure: weatherProvider.data!.pressure!.toString(),
                        feelsLike: weatherProvider.data!.feelsLike!.toString(),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_regular/network_error_content.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_regular/not_found_content.dart';
import 'package:weather_app/pages/data_page/data_view.dart';

class DataPage extends StatefulWidget {
  const DataPage({
    Key? key,
    required this.cityName,
    required this.isSimplified,
  }) : super(key: key);

  final String cityName;
  final bool isSimplified;

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<WeatherBloc>(context).add(
      GetWeatherData(widget.cityName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      body: Center(
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is SearchingState) {
              return const CircularProgressIndicator(
                color: Colors.orangeAccent,
              );
            } else if (state is SearchedState) {
              return DataView(
                cityName: widget.cityName,
                state: state,
                isSimplified: widget.isSimplified,
              );
            } else if (state is ErrorState) {
              return const NetworkErrorContent();
            } else if (state is NotFoundState) {
              return NotFoundContent(
                cityname: widget.cityName,
              );
            }
            return const Placeholder();
          },
        ),
      ),
    );
  }
}

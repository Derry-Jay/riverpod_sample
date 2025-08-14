import '../css/css.dart';
import '../css/measurements.dart';
import '../css/shades.dart';
import '../extensions/extensions.dart';
import 'methods.dart';
import 'route_generator.dart';

final css = Css(),
    shades = Shades(),
    measurements = Measurements(),
    rg = RouteGenerator(flag: true),
    counterProvider = stateCounter.provider;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'core/utils/observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const ECommerce());
}

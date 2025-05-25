import 'package:flutter/material.dart';
import 'package:s_rocks_assignment/features/homescreen/Model/remote/HomeRepository.dart';

import '../Model/ServiceModel.dart';

class HomeViewModel with ChangeNotifier {
  final HomeRepository _homeRepository;
  bool _isLoading = false;
  List<ServiceModel> _services = [];

  HomeViewModel(this._homeRepository);

  bool get isLoading => _isLoading;
  List<ServiceModel> get services => _services;

  Future<void> fetchListData() async {
    _isLoading = true;
    notifyListeners();

    try {
      _services = await _homeRepository.fetchServices();
    } catch (e) {
      print("Error fetching services: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
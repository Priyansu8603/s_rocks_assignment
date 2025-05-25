import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:s_rocks_assignment/features/homescreen/Model/ServiceModel.dart';

class HomeRepository{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<ServiceModel>> fetchServices() async {
    final snapshot = await _firestore.collection('services').get();
    return snapshot.docs
        .map((doc) => ServiceModel.fromMap(doc.data()))
        .toList();
  }
}
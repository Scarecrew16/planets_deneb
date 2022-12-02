import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deneb_v2/starships/base_satrship_repsoitory.dart';
import 'package:deneb_v2/models/starship_model.dart';

class StarshipRepository extends BaseStarshipRepository {
  final FirebaseFirestore _firebaseFirestore;

  StarshipRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Starship>> getStarships() {
    return _firebaseFirestore
        .collection('starships')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Starship.fromSnapshot(doc)).toList();
    });
  }

  @override
  Future<bool> searchStarship(String name) async {
    final starship = await _firebaseFirestore
        .collection('starships')
        .where('name', isEqualTo: name)
        .get();

    return starship.docs.length > 0;
  }
}

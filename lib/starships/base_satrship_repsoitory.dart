import '../models/starship_model.dart';

abstract class BaseStarshipRepository {
  Future<bool> searchStarship(String code);
  Stream<List<Starship>> getStarships();
}

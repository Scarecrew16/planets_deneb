part of 'starship_bloc.dart';

abstract class StarshipEvent extends Equatable {
  const StarshipEvent();

  @override
  List<Object> get props => [];
}

class LoadStarships extends StarshipEvent {}

class UpdateStarships extends StarshipEvent {
  final List<Starship> starships;

  UpdateStarships({this.starships = const <Starship>[]});

  @override
  List<Object> get props => [starships];
}

class SelectStarship extends StarshipEvent {
  final Starship voucher;

  SelectStarship({required this.voucher});

  @override
  List<Object> get props => [voucher];
}

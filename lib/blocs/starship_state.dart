part of 'starship_bloc.dart';

abstract class StarshipState extends Equatable {
  const StarshipState();

  @override
  List<Object> get props => [];
}

class StarshipLoading extends StarshipState {}

class StarshipLoaded extends StarshipState {
  final List<Starship> starships;

  StarshipLoaded({this.starships = const <Starship>[]});

  @override
  List<Object> get props => [starships];
}

class StarshipSelected extends StarshipState {
  final Starship starship;

  StarshipSelected({required this.starship});

  @override
  List<Object> get props => [starship];
}

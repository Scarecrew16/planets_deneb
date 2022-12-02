import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../models/starship_model.dart';
import '../../starships/starship_repository.dart';

part 'starship_event.dart';
part 'starship_state.dart';

class StarshipBloc extends Bloc<StarshipEvent, StarshipState> {
  final StarshipRepository _starshipRepository;
  StreamSubscription? _starshipSubscription;

  StarshipBloc({required StarshipRepository starshipRepository})
      : _starshipRepository = starshipRepository,
        super(StarshipLoading()) {
    on<LoadStarships>(_onLoadStarships);
    on<UpdateStarships>(_onUpdateStarships);
    on<SelectStarship>(_onSelectStarship);
  }

  void _onLoadStarships(
    LoadStarships event,
    Emitter<StarshipState> emit,
  ) {
    _starshipSubscription?.cancel();
    _starshipSubscription = _starshipRepository.getStarships().listen(
          (starships) => add(
            UpdateStarships(starships: starships),
          ),
        );
  }

  void _onUpdateStarships(
    UpdateStarships event,
    Emitter<StarshipState> emit,
  ) {
    emit(
      StarshipLoaded(starships: event.starships),
    );
  }

  void _onSelectStarship(
    SelectStarship event,
    Emitter<StarshipState> emit,
  ) {
    emit(
      StarshipSelected(starship: event.voucher),
    );
  }
}

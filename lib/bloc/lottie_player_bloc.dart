import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'lottie_player_event.dart';
part 'lottie_player_state.dart';

class LottiePlayerBloc extends Bloc<LottiePlayerEvent, LottiePlayerState> {
  LottiePlayerBloc() : super(LottiePlayerInitial()) {
    on<LottiePlayerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

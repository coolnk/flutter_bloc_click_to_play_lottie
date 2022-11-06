import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'lottie_player_event.dart';
part 'lottie_player_state.dart';

class LottiePlayerBloc extends Bloc<LottiePlayerEvent, LottiePlayerState> {
  LottiePlayerBloc() : super(const LottiePlayerInitialState(isPlaying: false)) {
    on<LottiePlayerPlayButtonClicked>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(const LottiePlayerAmimatedState(isPlaying: true));
    });
  }
}

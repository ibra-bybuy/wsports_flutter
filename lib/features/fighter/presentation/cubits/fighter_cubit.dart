import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';

@Injectable()
class FighterCubit extends Cubit<FetchState> {
  FighterCubit() : super(FetchInitial());
}

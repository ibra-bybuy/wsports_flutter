import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'main_state.dart';

@Injectable()
class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());
}

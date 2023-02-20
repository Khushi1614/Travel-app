import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mountain/Cubits/AppState.dart';
import 'package:mountain/Networks/DataModel.dart';
import 'package:mountain/Networks/DataServices.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({required this.data}) : super(InitialState())
  {
    emit(WelcomeState());
  }
  final DataServices data;
 late final places;
void getData() async{
  try{
     emit(LoadingState());
     places= await data.getInfo();
     emit(LoadedState(places));
  }
      catch(e){

      }
}
detailPage(DataModel data){
  emit(DetailState(data));
}
goHome(){
  emit(LoadedState(places));
}

}



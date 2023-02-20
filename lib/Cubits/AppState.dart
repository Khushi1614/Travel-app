import 'package:equatable/equatable.dart';

import '../Networks/DataModel.dart';

abstract  class AppState extends Equatable{
}
class InitialState extends AppState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class WelcomeState extends AppState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class LoadingState extends AppState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class LoadedState extends AppState{
  final List<DataModel> places;
  LoadedState(this.places);
  @override
  // TODO: implement props
  List<Object?> get props => [places];
}
class DetailState extends AppState{
  final DataModel place;
  DetailState(this.place);
  @override
  // TODO: implement props
  List<Object?> get props => [place];
}




import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
   SharedPreferences _shared;
   static SharedPref share ;

  // this method is used to create only one instance from sharedPref class>>>>>>>>>>>>>>>
  static SharedPref getInstances(){
    if(share == null){
      return share = SharedPref() ; 
    }
    return share ;
  }

  // is used to save data in key and value form >>>>>>>>>>>>>>>>>>>>>>>>
  savedData(int color) async{
    _shared = await SharedPreferences.getInstance() ;
    _shared.setInt("returnColors", color); 
  }

  //is used to get the data >>>>>>>>>>>>>>>>> 
  Future<int> getData() async{
    _shared = await SharedPreferences.getInstance() ;
    return _shared.getInt("returnColors");
}
}
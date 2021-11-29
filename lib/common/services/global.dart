import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:mineral_app/common/store/store.dart';
import 'package:permission_handler/permission_handler.dart';

import '/common/apis/apis.dart';
import '/common/entities/user.dart';
import '/common/utils/helper.dart';

class GlobalService extends GetxService {
  final global = {}.obs;
  final _currentLocation = Rx<LatLng>(LatLng(0, 0));
  set currentLocation(value) => _currentLocation.value = value;
  get currentLocation => _currentLocation.value;

  final _backPage = RxInt(-1);
  set backPage(value) => _backPage.value = value;
  get backPage => _backPage.value;

  Future<GlobalService> init() async {
    var response = await Helper.getJsonFile('assets/dbfile/mapper.json');
    global.value = response;
    final userStore = Get.find<UserStore>();
    // var locationStatus = await Permission.location;
    // var locationStatusAlways = await Permission.locationAlways;
    if (await Permission.location.serviceStatus.isEnabled) {
      // 获取定位更新
      var profile = userStore.profile;
      print('profile${profile.result}');
      UserStore.to.saveProfile(profile);
      // Use current location
      Location location = Location();
      location.onLocationChanged.listen((LocationData location) async {
        if (userStore.isLogin) {
          print('location+> ${location.latitude},${location.longitude}');
          currentLocation = LatLng(location.latitude, location.longitude);

          UserLocationRequestEntity params = UserLocationRequestEntity(
            lat: location.latitude,
            lng: location.longitude,
            time: DateTime.now().millisecondsSinceEpoch,
            userId: profile.result['user']['id'],
          );

          await UserAPI.locationAdd(params: params);
        }
      });
    }
    return this;
  }
}

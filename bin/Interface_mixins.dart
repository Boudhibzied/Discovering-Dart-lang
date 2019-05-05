void main() {
  var samsung = Phone('Galaxy Note 10', 'Samsung')
  ..getDeviceInfo()
  ..getAllFeatures();
}

abstract class Device {
  String name;
  String manifacturer;
  void getDeviceInfo();
}

mixin FeaturesMixin {
  bool blueTooth = true;
  bool dualSim = false;
  bool nfc = true;
}

mixin UtilitiesMixin on FeaturesMixin {
  bool calculator = true;
  bool flashLight = true;
  bool thermometer = false;

  String _has(bool feat) => feat ? 'yes' : 'no';

  void getAllFeatures() => print('''
  --Features--
  Bluetooth : ${_has(super.blueTooth)}
  Dual Sim :  ${_has(super.dualSim)}
  NFC :   ${_has(super.nfc)}
  Calculator : ${_has(calculator)}
  FlashLight : ${_has(flashLight)}
  Thermometer : ${_has(thermometer)}
  ***********************************
  ''');
}

class Phone with FeaturesMixin, UtilitiesMixin implements Device {
  Phone(this.name, this.manifacturer);

  String name;
  String manifacturer;

  void getDeviceInfo() => print('''
  ***********************************
  Device name: $name
  Manifactured by: $manifacturer
  ''');
}
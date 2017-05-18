
import { NativeModules, NativeEventEmitter } from 'react-native';

const RNMotionSensorsNative = NativeModules.RNMotionSensors;

const RNMotionSensorsNativeEmitter = new NativeEventEmitter(RNMotionSensorsNative);

class RNMotionSensors {
  startDeviceMotionUpdates(interval = 60 / 1000, callback) {
    RNMotionSensorsNative.startDeviceMotionUpdates(interval);
    this.eventSubscription = RNMotionSensorsNativeEmitter.addListener('DeviceMotionUpdates', callback);
  }

  stopDeviceMotionUpdates() {
    RNMotionSensorsNative.stopDeviceMotionUpdates();
    this.eventSubscription.remove();
  }
}

export default new RNMotionSensors();

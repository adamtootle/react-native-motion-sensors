
# react-native-motion-sensors

## Getting started

`$ npm install react-native-motion-sensors --save`

### Mostly automatic installation

`$ react-native link react-native-motion-sensors`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-motion-sensors` and add `RNMotionSensors.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNMotionSensors.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNMotionSensorsPackage;` to the imports at the top of the file
  - Add `new RNMotionSensorsPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-motion-sensors'
  	project(':react-native-motion-sensors').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-motion-sensors/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-motion-sensors')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNMotionSensors.sln` in `node_modules/react-native-motion-sensors/windows/RNMotionSensors.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Com.Reactlibrary.RNMotionSensors;` to the usings at the top of the file
  - Add `new RNMotionSensorsPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNMotionSensors from 'react-native-motion-sensors';

// TODO: What to do with the module?
RNMotionSensors;
```
  
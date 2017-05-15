using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNMotionSensors
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNMotionSensorsModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNMotionSensorsModule"/>.
        /// </summary>
        internal RNMotionSensorsModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNMotionSensors";
            }
        }
    }
}

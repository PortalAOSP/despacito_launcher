package sos.aperture.despacito.gestures

import sos.aperture.despacito.Launcher

abstract class GestureHandler(val launcher: Launcher) {

    abstract fun onGestureTrigger()
}
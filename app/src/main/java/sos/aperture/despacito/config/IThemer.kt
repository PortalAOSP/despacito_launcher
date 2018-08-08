package sos.aperture.despacito.config

import android.content.Context
import sos.aperture.despacito.allapps.theme.IAllAppsThemer
import sos.aperture.despacito.popup.theme.IPopupThemer

interface IThemer {

    fun allAppsTheme(context: Context): IAllAppsThemer
    fun popupTheme(context: Context): IPopupThemer
}
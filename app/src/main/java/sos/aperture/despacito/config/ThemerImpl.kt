package sos.aperture.despacito.config

import android.content.Context
import sos.aperture.despacito.Utilities
import sos.aperture.despacito.allapps.theme.AllAppsBaseTheme
import sos.aperture.despacito.allapps.theme.AllAppsVerticalTheme
import sos.aperture.despacito.allapps.theme.IAllAppsThemer
import sos.aperture.despacito.popup.theme.IPopupThemer
import sos.aperture.despacito.popup.theme.PopupBaseTheme
import sos.aperture.despacito.popup.theme.PopupCardTheme

open class ThemerImpl : IThemer {

    var allAppsTheme: IAllAppsThemer? = null
    var popupTheme: IPopupThemer? = null

    override fun allAppsTheme(context: Context): IAllAppsThemer {
        val useVerticalLayout = Utilities.getPrefs(context).verticalDrawerLayout
        if (allAppsTheme == null ||
                (useVerticalLayout && allAppsTheme !is AllAppsVerticalTheme) ||
                (!useVerticalLayout && allAppsTheme is AllAppsVerticalTheme))
            allAppsTheme = if (useVerticalLayout) AllAppsVerticalTheme(context) else AllAppsBaseTheme(context)
        return allAppsTheme!!
    }

    override fun popupTheme(context: Context): IPopupThemer {
        val useCardTheme = Utilities.getPrefs(context).popupCardTheme
        if (popupTheme == null ||
                (useCardTheme && popupTheme !is PopupCardTheme) ||
                (!useCardTheme && popupTheme !is PopupBaseTheme)) {
            popupTheme = if (useCardTheme) PopupCardTheme() else PopupBaseTheme()
        }
        return popupTheme!!
    }
}
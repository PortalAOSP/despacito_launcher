-keep,allowshrinking,allowoptimization class sos.aperture.despacito.** {
  *;
}

-keep class sos.aperture.despacito.BaseRecyclerViewFastScrollBar {
  public void setThumbWidth(int);
  public int getThumbWidth();
  public void setTrackWidth(int);
  public int getTrackWidth();
}

-keep class sos.aperture.despacito.BaseRecyclerViewFastScrollPopup {
  public void setAlpha(float);
  public float getAlpha();
}

-keep class sos.aperture.despacito.ButtonDropTarget {
  public int getTextColor();
}

-keep class sos.aperture.despacito.CellLayout {
  public float getBackgroundAlpha();
  public void setBackgroundAlpha(float);
}

-keep class sos.aperture.despacito.CellLayout$LayoutParams {
  public void setWidth(int);
  public int getWidth();
  public void setHeight(int);
  public int getHeight();
  public void setX(int);
  public int getX();
  public void setY(int);
  public int getY();
}

-keep class sos.aperture.despacito.dragndrop.DragLayer$LayoutParams {
  public void setWidth(int);
  public int getWidth();
  public void setHeight(int);
  public int getHeight();
  public void setX(int);
  public int getX();
  public void setY(int);
  public int getY();
}

-keep class sos.aperture.despacito.FastBitmapDrawable {
  public void setDesaturation(float);
  public float getDesaturation();
  public void setBrightness(float);
  public float getBrightness();
}

-keep class sos.aperture.despacito.PreloadIconDrawable {
  public float getAnimationProgress();
  public void setAnimationProgress(float);
}

-keep class sos.aperture.despacito.pageindicators.CaretDrawable {
  public float getCaretProgress();
  public void setCaretProgress(float);
}

-keep class sos.aperture.despacito.Workspace {
  public float getBackgroundAlpha();
  public void setBackgroundAlpha(float);
}

-keep class com.google.android.libraries.launcherclient.* {
  *;
}

-keep,allowshrinking,allowoptimization class me.jfenn.attribouter.** {
 *;
}

-dontwarn javax.**
-dontwarn org.codehaus.mojo.animal_sniffer.**

-keep class sos.aperture.despacito.DeferredHandler {
 *;
}

# Proguard will strip new callbacks in LauncherApps.Callback from
# WrappedCallback if compiled against an older SDK. Don't let this happen.
-keep class sos.aperture.despacito.compat.** {
  *;
}

-keep class sos.aperture.despacito.preferences.HiddenAppsFragment {
  *;
}

-keep class sos.aperture.despacito.preferences.ShortcutBlacklistFragment {
  *;
}
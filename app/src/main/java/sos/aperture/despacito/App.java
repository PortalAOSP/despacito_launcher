package sos.aperture.despacito;

import android.app.Application;

import sos.aperture.despacito.preferences.PreferenceImpl;
import sos.aperture.despacito.preferences.PreferenceProvider;

public class App extends Application {

     @Override
    public void onCreate() {
        super.onCreate();

        PreferenceProvider.INSTANCE.init(new PreferenceImpl(this));
    }
}

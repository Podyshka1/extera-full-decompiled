package org.telegram.utils.settings;

import android.content.SharedPreferences;
import org.telegram.messenger.ApplicationLoader;

/* JADX INFO: loaded from: classes6.dex */
abstract class SettingsPreferences {

    public static final class Holder {
        private static final SharedPreferences INSTANCE = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
    }

    public static SharedPreferences get() {
        return Holder.INSTANCE;
    }
}
